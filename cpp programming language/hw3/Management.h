#ifndef MANAGEMENT_H
#define MANAGEMENT_H

#include "FileSet.h"
#include <cstdio>
#include <cstring>
class Management {
 public:
  Management();
  ~Management();

  bool createFileSet(char *filePath, unsigned int maxFileNumberOfNewSet);
  bool openFileSet(char *filePath);
  bool addFileToFileSet(char *filePath);
  bool deleteFileFromFileSet(char *fileName);
  bool fetchFileFromFileSet(char *fileName, char *newPathAndName);
  bool printFileListInFileSet();
  bool closeFileSet();
  
 private:
  FileSet* fileset;
};

#endif
