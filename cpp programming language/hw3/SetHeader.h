#ifndef SETHEADER_H
#define SETHEADER_H

typedef unsigned char byte;

class SetHeader {
 public:
  SetHeader(byte* bytes);
  SetHeader(unsigned int _maxFileNumber);
  ~SetHeader();
  
  byte* toBytes();

  byte checkSum[16];
  unsigned int maxFileNumber;
  unsigned int currentFileNumber;
  long long emptyPosition;
  char setMark[9];

  const static int SIZE = 16 + 4 + 4 + 8 + 9;


};

#endif
