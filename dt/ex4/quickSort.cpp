#include <stdio.h>
#include <stdlib.h>

int partition(int l, int r, int *a) {
    
  int p = l + rand()%(r-l+1);

  int tmp = a[l];
  a[l] = a[p];
  a[p] = tmp;

  int x = a[l];
    
  while (l < r) {

    while (l < r && a[r] >= x)
      r--;
    if (l < r) {
      a[l] = a[r];
      l++;
    }

    while (l < r && a[l] < x)
      l++;
    if (l < r) {
      a[r] = a[l];
      r--;
    }
  }

  a[l] = x;
  return l;
}

void quickSort(int l, int r, int *a) {
  if (l < r) {
    int mid = partition(l, r, a);
    quickSort(l, mid - 1, a);
    quickSort(mid + 1, r, a);
  }
}

int curTestCase;
const int n = 10;
int a[n];
char tmp[10];
void readData() {
  scanf("%s", tmp);
  sscanf(tmp, "data%d", &curTestCase);
  
  for (int i = 0; i < n; i++)
    scanf("%d", &a[i]);
}

void writeData() {
  printf("data%d after sorted:", curTestCase);
  for (int i = 0; i < n; i++)
    printf(" %d", a[i]);
  puts("");
}

int main(){
  freopen("in.txt", "r", stdin);
  readData();
  quickSort(0, n-1, a);
  writeData();
  
  readData();
  quickSort(0, n-1, a);
  writeData();
  return 0;
}
