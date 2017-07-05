#include<stdio.h>
#include<string.h>

typedef long long LL;
#define max(a,b) ((a)>(b)?(a):(b))

#define N 1010
int dp[N], a[N], n;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, j, ans = 0;
  scanf("%d", &n);
  for(i = 0; i < n; i++){
    scanf("%d", &a[i]);
    dp[i] = 1;
    for(j = 0; j < i; j++)
      if(a[i] > a[j])
        dp[i] = max(dp[i], dp[j] + 1);
    ans = max(ans, dp[i]);
  }
  printf("%d\n", ans);
  return 0;
}
