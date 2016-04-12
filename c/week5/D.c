#include<stdio.h>
#include<string.h>

#define INF 1<<29
#define N 110

int n, a[N], f[N][N];
int dp(int l, int r){
  int i;
  if(r - l < 2)
    return 0;
  if(r - l == 2)
    return a[l + 1] * a[l] * a[r];
  if(f[l][r] < INF)
    return f[l][r];
  for(i = l + 1; i < r; i++)
    if(f[l][r] > dp(l, i) + dp(i, r) + a[i] * a[l] * a[r])
      f[l][r] = dp(l, i) + dp(i, r) + a[i] * a[l] * a[r];
  return f[l][r];
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i;
  scanf("%d", &n);
  memset(f, 0x3f, sizeof(f));
  for(i = 0; i < n; i++)
    scanf("%d", &a[i]);
  printf("%d\n", dp(0, n - 1));
  return 0;
}
