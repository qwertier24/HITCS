#ifndef FILESET_H
#define FILESET_H

#include <cstdio>
#include "SetHeader.h"
#include "FileTag.h"
#include "md5.h"

typedef unsigned char byte;

class FileSet {
  
 public:
  FileSet(char* _archivePath);
  FileSet(char* _archivePath, unsigned int _maxFileNumber);
  ~FileSet();
  
  inline void writeToArchive(byte* data, unsigned int len, long long pos); 
  inline long long writeFileToArchive(byte* data, unsigned int len);
  inline void deleteFileFromArchive(long long pos);
  inline byte* readFileFromArchive(long long pos, unsigned int len);
  inline byte* calcCheckSum();
  
  bool addFile(char* filePath);
  bool deleteFile(char* fileName);
  bool fetchFile(char* fileName, char* filePath);
  void printFileList(); 

 private:
  FILE* archive;
  SetHeader* header;
  FileTag** fileTags;

  unsigned int maxFileNumber;
};

#endif
