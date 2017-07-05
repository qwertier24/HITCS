#include <bits/stdc++.h>

int n = 100, m = 100, Q = 1000, Update, Read, Delete, Insert, Threshold, Thread, Value;
char fileName[100];
int main(int argc, char* argv[]) {
  sscanf(argv[1], "%d", &n);
  sscanf(argv[2], "%d", &m);
  sscanf(argv[3], "%d", &Q);
  sscanf(argv[4], "%d", &Update);
  sscanf(argv[5], "%d", &Read);
  sscanf(argv[6], "%d", &Delete);
  sscanf(argv[7], "%d", &Insert);
  sscanf(argv[8], "%d", &Value);
  sscanf(argv[9], "%d", &Threshold);
  sscanf(argv[10], "%d", &Thread);
  freopen("input.txt", "w", stdout);
  printf("%d %d %d %d\n", n, m, Threshold, Thread);
  for (int i = 0; i < n; i++)
    printf("%d ", rand()%m);
  puts("");
  printf("%d\n", Q);
  for (int i = 0; i < Q; i++) {
    int x = rand()%(Update + Read + Delete + Insert + Value);
    if (x < Read) {
      printf("QueryColumn %d\n", rand()%m);
    } else if (x < Read + Update) {
      printf("Modify %d %d\n", rand()%n, rand()%m);
    } else if (x < Read + Update + Delete){
      printf("Delete %d\n", rand()%n);
    } else if (x < Read + Update + Delete + Insert) {
      printf("Insert %d\n", rand()%m);
    } else {
      printf("QueryRow %d\n", rand()%n);
    }
  }
  return 0;
}
