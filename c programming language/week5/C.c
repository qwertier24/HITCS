#include<stdio.h>
#include<string.h>
#define N 3410
#define M 12890

int n, m, dp[M], w[N], v[N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int n, m, i, j;
  scanf("%d%d", &n, &m);
  for(i = 0; i < n; i++){
    scanf("%d%d", &w[i], &v[i]);
    for(j = m; j >= w[i]; j--)
      if(dp[j] < dp[j - w[i]] + v[i])
        dp[j] = dp[j - w[i]] + v[i];
  }
  printf("%d\n", dp[m]);
  return 0;
}
