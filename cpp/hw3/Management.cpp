#include "Management.h"

Management::Management() {
  fileset = NULL;
}
Management::~Management() {
  if (fileset != NULL)
    delete fileset;  
}
bool Management::createFileSet(char *filePath,
                               unsigned int maxFileNumberOfNewSet) {
  if (fileset != NULL) {
    puts("Please close the previous archive");
    return false;
  }
  try {
    fileset = new FileSet(filePath, maxFileNumberOfNewSet);
    return true;
  } catch (const char* err) {
    printf("%s\n", err);
    return false;
  }
}

bool Management::openFileSet(char *filePath) {
  if (fileset != NULL) {
    puts("Please close the previous archive");
    return false;
  }
  try {
    fileset = new FileSet(filePath);
    return true;
  } catch (const char* err) {
    puts(err);
    return false;
  }
}

bool Management::addFileToFileSet(char *filePath) {
  if (fileset == NULL) {
    puts("Please open one archive");
    return false;
  } else {
    return fileset->addFile(filePath);
  }
}
bool Management::deleteFileFromFileSet(char *fileName) {
  if (fileset == NULL) {
    puts("Please open one archive");
    return false;
  } else {
    return fileset->deleteFile(fileName);
  }
}
bool Management::fetchFileFromFileSet(char *fileName,
                                      char *newPathAndName) {
  if (fileset == NULL) {
    puts("Please open one archive");
    return false;
  } else {
    return fileset->fetchFile(fileName, newPathAndName);
  }
}
bool Management::printFileListInFileSet() {
  if (fileset == NULL) {
    puts("Please open one archive");
    return false;
  } else {
    fileset->printFileList();
    return true;
  }
}
bool Management::closeFileSet() {
  if (fileset == NULL){
    puts("Please open one archive");
    return false;
  } else {
    delete fileset;
    fileset = NULL;
    return true;
  }
}
