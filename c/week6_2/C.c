#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/

#define MOD 1000000007
void update(int* a, int b){
  *a += b;
  *a %= MOD;
}

#define N 1010
#define S 10000
#define zero 10000

int dp[2][(S<<1) + 10], a[N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif
  int n, i, j;
  scanf("%d", &n);
  int ans = 0;
  for(i = 1; i <= n; i++){
    scanf("%d", &a[i]);
    memset(dp[i&1], 0, sizeof(dp[i&1]));
    for(j = -S + a[i]; j <= S; j++)
      if(dp[(i - 1)&1][zero + j - a[i]])
        update(&dp[i&1][zero + j], dp[(i - 1)&1][zero + j - a[i]]);
    for(j = -S; j <= S - a[i]; j++)
      if(dp[(i - 1)&1][zero + j + a[i]])
        update(&dp[i&1][zero + j], dp[(i - 1)&1][zero + j + a[i]]);
    update(&dp[i&1][zero + a[i]], 1);
    update(&dp[i&1][zero - a[i]], 1);
    update(&ans, dp[i&1][zero]);
  }
  printf("%d\n", ans);
  return 0;
}
