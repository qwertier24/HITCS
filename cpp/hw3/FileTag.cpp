#include "FileTag.h"
#include <cstdlib>
#include <cstring>

FileTag::FileTag() {
  filePosition = 0;
  fileSize = 0;
  deleted = 1;
  memset(fileName, 0, sizeof(fileName));
}

FileTag::FileTag(byte* bytes) {
  filePosition = *((long long*)(bytes + 0));
  fileSize = *(unsigned int*)(bytes + 8);
  deleted = *(byte*)(bytes + 12);
  memcpy(fileName, bytes + 13, sizeof(fileName));
}

byte* FileTag::toBytes() {
  byte* ret = new byte[8 + 4 + 1 + 256];
  memcpy(ret + 0, &filePosition, 8);
  memcpy(ret + 8, &fileSize, 4);
  memcpy(ret + 12, &deleted, 1);
  memcpy(ret + 13, fileName, 256);
  return ret;
}
