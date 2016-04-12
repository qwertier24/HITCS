#include<stdio.h>
#include<string.h>

#define N 110

int n, curs[N], a[N][N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif
  int i, j, t, b, r, ans = -(1<<30);
  scanf("%d", &n);
  for(i = 0; i < n; i++)
    for(j = 0; j < n; j++)
      scanf("%d", &a[i][j]);
  for(t = 0; t < n; t++){
    memset(curs, 0, sizeof(curs));
    for(b = t; b < n; b++){
      int mins = 0, lsts = 0;
      for(r = 0; r < n; r++){
        lsts += a[b][r];
        curs[r] += lsts;
        if(ans < curs[r] - mins)
          ans = curs[r] - mins;
        if(mins > curs[r])
          mins = curs[r];
      }
    }
  }
  printf("%d\n", ans);
  return 0;
}
