#include "FileBlock.h"

unsigned int FileBlock::SIZE = 64 * 1024;
unsigned int FileBlock::DATASIZE = 64 * 1024 - 4 * 3;

FileBlock::FileBlock(byte* bytes) {
  nextPosition = *(long long*)(bytes + 0);
  size = *(unsigned int*)(bytes + 8);
  memcpy(data, bytes + 12, sizeof(data));
}
FileBlock::FileBlock(byte* _data, int _size) {
  nextPosition = -1;
  size = _size;
  memcpy(data, _data, sizeof(byte) * size);
}
FileBlock::~FileBlock() {
}
byte* FileBlock::toBytes() {
  byte* ret = new byte[64 * 1024];
  memcpy(ret + 0, &nextPosition, sizeof(nextPosition));
  memcpy(ret + 8, &size, sizeof(size));
  memcpy(ret + 12, data, sizeof(data));
  return ret;
}
