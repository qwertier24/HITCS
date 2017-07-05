#include <stdio.h>
#define REP(i,n) for(int i=0; i<n; i++)
#define FOR(i,n) for(int i=1; i<=n; i++)

typedef long long LL;
using namespace std;

#include "Management.h"

int main(){
#ifdef QWERTIER
    freopen("in","r",stdin);
#endif
    Management m;
    m.createFileSet("archive.bin",100);

    // Test leaking memory 
	for (int i = 0; i < 1000; i++) {
		m.addFileToFileSet("file1.bin");
		m.addFileToFileSet("file2.bin");
		m.addFileToFileSet("file3.bin");
		m.deleteFileFromFileSet("file1.bin");
		m.deleteFileFromFileSet("file2.bin");
		m.deleteFileFromFileSet("file3.bin");
	}
    m.closeFileSet();

    // Test fetchFile
    m.openFileSet("archive.bin");
    m.addFileToFileSet("file1.bin");
    m.fetchFileFromFileSet("file1.bin", "file4.bin");
    m.printFileListInFileSet();
    m.closeFileSet();

    // Test checkSum
	FILE* f;
	fopen_s(&f, "archive.bin", "rb+");
    fseek(f, 0, SEEK_END);
    fwrite("1", 1, 1, f);
    fclose(f);
    m.openFileSet("archive.bin");
    m.fetchFileFromFileSet("file1.bin", "file2.bin");
    m.printFileListInFileSet();
    m.closeFileSet();
    return 0;
}
