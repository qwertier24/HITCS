#include "SetHeader.h"
#include "md5.h"

SetHeader::SetHeader(unsigned int _maxFileNumber) {
  memset(checkSum, 0, sizeof(checkSum));
  maxFileNumber = _maxFileNumber;
  currentFileNumber = 0;
  emptyPosition = -1;
  strcpy_s(setMark, "19970224");
}
SetHeader::SetHeader(byte* bytes) {
  memcpy(checkSum, bytes + 0, sizeof(checkSum));
  maxFileNumber = *(unsigned int*)(bytes + 16);
  currentFileNumber = *(unsigned int*)(bytes + 20);
  emptyPosition = *(long long*)(bytes + 24);
  memcpy(setMark, bytes + 32, sizeof(setMark));
}
SetHeader::~SetHeader(){
}

byte* SetHeader::toBytes() {
  byte* ret = new byte[16 + 4 + 4 + 8 + 9];
  memcpy(ret + 0, checkSum, 16);
  memcpy(ret + 16, &maxFileNumber, 4);
  memcpy(ret + 20, &currentFileNumber, 4);
  memcpy(ret + 24, &emptyPosition, 8);
  memcpy(ret + 32, setMark, 9);
  return ret;
}
