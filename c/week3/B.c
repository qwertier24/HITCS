#include<stdio.h>
#include<string.h>
#define max(a,b) ((a)>(b)?(a):(b))

#define N 110
int f[N][N], a[N][N], n;
int dp(int x,int y){
  if(x >= n || y >= n)
    return 0;
  if(f[x][y] != -1)
    return f[x][y];
  return f[x][y] = max(dp(x + 1, y), dp(x + 1, y + 1)) + a[x][y];
}
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, j;
  scanf("%d", &n);
  for(i = 0; i < n; i++)
    for(j = 0; j <= i; j++)
      scanf("%d", &a[i][j]);
  memset(f, -1, sizeof(f));
  printf("%d\n", dp(0, 0));
  return 0;
}
