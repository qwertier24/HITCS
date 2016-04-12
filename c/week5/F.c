#include<stdio.h>
#include<string.h>
#define N 5010
#define INF 1<<30

int n;
char s[N];

short f[N][N];
short dp(int l, int r){
  if(l >= r)
    return 0;
  if(f[l][r] != -1)
    return f[l][r];
  if(s[l] == s[r])
    return f[l][r] = dp(l + 1, r - 1);
  else{
    f[l][r] = dp(l, r - 1) + 1;
    if(f[l][r] > dp(l + 1, r) + 1)
      f[l][r] = dp(l + 1, r) + 1;
    return f[l][r];
  }
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  scanf("%d", &n);
  scanf("%s", s);
  memset(f, -1, sizeof(f));
  printf("%d", dp(0, n-1));
  return 0;
}
