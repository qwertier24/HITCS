#ifndef FILEBLOCK_H
#define FILEBLOCK_H

#include <cstdio>
#include <cstdlib>
#include <cstring>

typedef unsigned char byte;
class FileBlock {
 public:
  FileBlock(byte* bytes);
  FileBlock(byte* _data, int _size);
  ~FileBlock();
  byte* toBytes();

  static unsigned int SIZE;
  static unsigned int DATASIZE;
  long long nextPosition;
  unsigned int size;
  byte data[64*1024 - 12];
};

#endif
