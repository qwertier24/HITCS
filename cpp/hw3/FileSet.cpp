#include <cstring>
#include <iostream>
#include <vector>
#include <algorithm>
#include "FileSet.h"
#include "FileBlock.h"

using namespace std;

#ifdef TEST
char toHex[16] = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
void hexPrint(byte* buf, int len) {
  for (int i = 0; i < len; i++) {
    byte a = buf[i] / 16, b = buf[i] % 16;
    fprintf(stderr, "%c%c", toHex[a], toHex[b]);
  }
  printf("\n");
}
#endif

inline byte* FileSet::calcCheckSum() {
  _fseeki64(archive, 0, SEEK_END);
  long long fileSize = _ftelli64(archive) - 16;
  _fseeki64(archive, 16, SEEK_SET);
  byte* buffer = new byte[fileSize];
  for (long long i = 0; i < (fileSize >> 30); i++)
    fread(buffer + (i << 30), 1, min(fileSize - (i << 30), 1ll<<30) , archive);
  MD5* md5 = new MD5(buffer, fileSize);
  byte* md5Buffer = new byte[16];
  memcpy(md5Buffer, md5->getDigest(), 16);
  delete[] buffer;
  delete md5;
  return md5Buffer;
}

FileSet::FileSet(char* _archivePath) {
  if (fopen_s(&archive, _archivePath, "rb+")) 
    throw "Can't open the archive";
  
  byte* buffer = new byte[1024];
  fread(buffer, 1, SetHeader::SIZE, archive);
  header = new SetHeader(buffer);
  
  if (strncmp("19970224", header->setMark, 8)) {
    delete[] buffer;
    delete header;
    throw "Not a valid archive";
  }
  
  byte* md5Buffer = calcCheckSum();
  if (_memicmp(md5Buffer, header->checkSum, 16)) {
    delete[] buffer;
    delete header;
    delete[] md5Buffer;
    throw "The archive is broken";
  }
  delete[] md5Buffer;
  
  maxFileNumber = header->maxFileNumber;

  _fseeki64(archive, SetHeader::SIZE, SEEK_SET);
  fileTags = new FileTag*[maxFileNumber];
  for (unsigned int i = 0; i < maxFileNumber; i++) {
    //fseek(archive, SetHeader::SIZE + FileTag::SIZE * i, SEEK_SET);
    fread(buffer, 1, FileTag::SIZE, archive);
    fileTags[i] = new FileTag(buffer);
  }
  delete[] buffer;
}

FileSet::FileSet(char* _archivePath, unsigned int _maxFileNumber) {
  maxFileNumber = _maxFileNumber;
  if (fopen_s(&archive, _archivePath, "wb+")) 
    throw "Can't open the archive";
  
  // Write header to archive
  header = new SetHeader(_maxFileNumber);
  byte* headerBuffer = header->toBytes();
  fwrite(headerBuffer, 1, SetHeader::SIZE, archive);

#ifdef TEST
  hexPrint(headerBuffer, SetHeader::SIZE);
#endif
  // Write fileTags[i] to archive
  fileTags = new FileTag*[maxFileNumber];
  for (int i = 0; i < maxFileNumber; i++) {
    fileTags[i] = new FileTag();
    _fseeki64(archive, SetHeader::SIZE + FileTag::SIZE * i, SEEK_SET);
    byte* tagBuffer = fileTags[i]->toBytes();
#ifdef TEST
    //hexPrint(tagBuffer, FileTag::SIZE);
#endif
    fwrite(tagBuffer, 1, FileTag::SIZE, archive);
    delete[] tagBuffer;
  }
  
}

FileSet::~FileSet() {
#ifdef TEST
  hexPrint(calcCheckSum(), 16);
#endif
  writeToArchive(calcCheckSum(), 16, 0);
  fclose(archive);
  delete header;
  for (int i = 0; i < maxFileNumber; i++) 
    delete fileTags[i];
  delete[] fileTags;
}

inline void FileSet::writeToArchive(byte* data, unsigned int len, long long pos) {
  _fseeki64(archive, pos, SEEK_SET);
  fwrite(data, 1, len, archive);
  delete[] data;
}

inline long long FileSet::writeFileToArchive(byte* data, unsigned int len) {
  long long pos0 = -1;
  long long pos = header->emptyPosition;
  byte* blockBuffer = new byte[FileBlock::SIZE];
  int flag = 0;
  for (unsigned int i = 0; i < len; i += FileBlock::DATASIZE) {
    FileBlock* newBlock = new FileBlock(data + i,
                                        min(len - i, FileBlock::DATASIZE));
    if (pos == -1 || flag) {
      _fseeki64(archive, 0, SEEK_END);
      pos = _ftelli64(archive);
      newBlock->nextPosition = pos + FileBlock::SIZE;
      flag = 1;
    } else {
      _fseeki64(archive, pos, SEEK_SET);
      fread(blockBuffer, 1, FileBlock::SIZE, archive);
      FileBlock* block = new FileBlock(blockBuffer);
      newBlock->nextPosition = block->nextPosition;
      delete block;
    }
    if (pos0 == -1) {  // The first block
      pos0 = pos;
    }
	 
    if (i + FileBlock::DATASIZE >= len) {
      if (!flag)
        header->emptyPosition = newBlock->nextPosition;
      else
        header->emptyPosition = -1;
      newBlock->nextPosition = -1;
      writeToArchive(header->toBytes(), SetHeader::SIZE, 0);
    }
#ifdef TEST
    printf("writing:%I64d %u\n", pos, newBlock->size);
#endif
    _fseeki64(archive, pos, SEEK_SET);
    writeToArchive(newBlock->toBytes(), FileBlock::SIZE, pos);
    pos = newBlock->nextPosition;
	delete newBlock;
    //printf("i:%d %lld\n", i, newBlock->nextPosition);
  }
#ifdef TEST
  printf("END\n");
#endif
  delete[] blockBuffer;
  delete[] data;
  

  return pos0;
}

inline byte* FileSet::readFileFromArchive(long long pos, unsigned int len) {
  byte* data = new byte[len];
  byte* blockBuffer = new byte[FileBlock::SIZE];

  for (unsigned int dataPos = 0; pos != -1; dataPos += FileBlock::DATASIZE) {
    _fseeki64(archive, pos, SEEK_SET);
    fread(blockBuffer, 1, FileBlock::SIZE, archive);
    FileBlock* block = new FileBlock(blockBuffer);
    memcpy(data + dataPos, block->data, block->size);
    //hexPrint(block->toBytes(), FileBlock::SIZE);
#ifdef TEST
    printf("dataPos:%u %lld %lld\n", dataPos, pos, block->nextPosition);
#endif
    pos = block->nextPosition;
    delete block;
  }
  delete[] blockBuffer;
  return data;
}

inline void FileSet::deleteFileFromArchive(long long pos) {
  if (pos == -1)
    return;
  long long pos0 = pos;
  byte* blockBuffer = new byte[FileBlock::SIZE];
  _fseeki64(archive, pos, SEEK_SET);
  fread(blockBuffer, 1, FileBlock::SIZE, archive);
  FileBlock* block = new FileBlock(blockBuffer);
  while (block->nextPosition != -1) {
#ifdef TEST
    printf("deleting:%lld %d %d\n", pos, block->size, block->nextPosition);
#endif
    pos = block->nextPosition;
    delete block;
    _fseeki64(archive, pos, SEEK_SET);
    fread(blockBuffer, 1, FileBlock::SIZE, archive);
    block = new FileBlock(blockBuffer);
  }
  block->nextPosition = header->emptyPosition;
  writeToArchive(block->toBytes(), FileBlock::SIZE, pos);
  header->emptyPosition = pos0;
  writeToArchive(header->toBytes(), SetHeader::SIZE, 0);
  delete block;
  delete[] blockBuffer;
}

inline int findSlash(char* str) {
  /**
   * Find the position of the slash of str
   */
  int ret = -1;
  for (int i = 0; str[i]; i++)
    if (str[i] == '\\' || str[i] == '/')
      ret = i;
  return ret;
}
bool FileSet::addFile(char* filePath) {
  for (int i = 0; i < maxFileNumber; i++) {
    if (fileTags[i]->deleted == 1) {
	  FILE* fp;
      if (fopen_s(&fp, filePath, "rb+"))
        return false;

      // set deleted to 0
      fileTags[i]->deleted = 0;

      // set fileName
      strcpy_s(fileTags[i]->fileName, filePath + findSlash(filePath) + 1);

      // set fileSize
      _fseeki64(fp, 0, SEEK_END);
      fileTags[i]->fileSize = _ftelli64(fp);

      // set filePosition and write the file to archive
      _fseeki64(fp, 0, SEEK_SET);
      byte* fileBuffer = new byte[fileTags[i]->fileSize + 1];
      fread(fileBuffer, 1, fileTags[i]->fileSize, fp);
      fclose(fp);
      fileTags[i]->filePosition = writeFileToArchive(fileBuffer, fileTags[i]->fileSize);

      // write the new fileTag to archive
      writeToArchive(fileTags[i]->toBytes(),
                     FileTag::SIZE,
                     SetHeader::SIZE + FileTag::SIZE * i);

      // write the new setHeader to archive
      header->currentFileNumber++;
      writeToArchive(header->toBytes(),
                     SetHeader::SIZE,
                     0);
      return true;
    }
  }
  return false;
}

bool FileSet::deleteFile(char* fileName) {
  for (int i = 0; i < maxFileNumber; i++) {
    if (fileTags[i]->deleted == 0 && strcmp(fileName, fileTags[i]->fileName) == 0) {

      // write the new fileTag to archive
      fileTags[i]->deleted = 1;
      writeToArchive(fileTags[i]->toBytes(),
                     FileTag::SIZE,
                     SetHeader::SIZE + FileTag::SIZE * i);
      deleteFileFromArchive(fileTags[i]->filePosition);
      

      // write the new setHeader to archive
      header->currentFileNumber--;
      writeToArchive(header->toBytes(),
                     SetHeader::SIZE,
                     0);
#ifdef TEST
      printf("currentFileNumber:%d\n", header->currentFileNumber);
#endif
      return true;
    }
  }
  return false;
}

bool FileSet::fetchFile(char* fileName, char* filePath) {
  for (int i = 0; i < maxFileNumber; i++) {
    if (fileTags[i]->deleted == 0
        && strcmp(fileName, fileTags[i]->fileName) == 0) {
      byte* fileBuffer = readFileFromArchive(fileTags[i]->filePosition, fileTags[i]->fileSize);
	  FILE* fp;
      if (fopen_s(&fp, filePath, "wb+")) {
        delete[] fileBuffer;
        return false;
      }
      fwrite(fileBuffer, 1, fileTags[i]->fileSize, fp);
      fclose(fp);
      return true;
    }
  }
  return false;
}

void FileSet::printFileList() {
  printf("--------Archive Detail:--------\n");
  printf("There are %d file(s) in this archive.\n", header->currentFileNumber);
  for (int i = 0; i < maxFileNumber; i++) {
    if (fileTags[i]->deleted == 0) {
      printf("File Name:%s File Size:%.3f(KB)\n", fileTags[i]->fileName, fileTags[i]->fileSize / 1024.0);
    }
  }
  printf("\n");
}

