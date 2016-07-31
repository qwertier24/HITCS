#ifndef FILETAG_H
#define FILETAG_H

typedef unsigned char byte;
class FileTag {
  
 public:
  FileTag();
  FileTag(byte* bytes);
  byte* toBytes();

  const static unsigned int SIZE = 8 + 4 + 1 + 256;
  
  long long filePosition;
  unsigned int fileSize;
  byte deleted;
  char fileName[256];
};

#endif
