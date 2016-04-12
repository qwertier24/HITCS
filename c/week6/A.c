#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define N 10010

typedef long long LL;

int cmp(const void* a, const void* b){
  return *(int*)a - *(int*)b;
}

int dp[N], a[N], n, L, R;
int q[N], fr, rr;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int T, i;
  scanf("%d",&T);
  while(T--){
    scanf("%d%d%d",&n, &L, &R);
    for(i = 0; i < n; i++)
      scanf("%d",&a[i]);
    dp[0] = 0;
    qsort(a, n, sizeof(int), cmp);
    fr = 0, rr = -1;
    int l = n - 1, ans = -(1<<30);
    for(i = n - 1; i >= 0; i--){
      while(a[l] >= a[i] + L){
        while(fr <= rr && dp[q[rr]] < dp[l])
          rr--;
        q[++rr] = l--;
      }
      while(fr <= rr && a[q[fr]] > a[i] + R)
        fr++;
      if(fr <= rr)
        dp[i] = a[i] - dp[q[fr]];
      else
        dp[i] = a[i];
      /*printf("%d %d\n",a[i], dp[i]);*/
      if(L <= a[i] && a[i] <= R && ans < dp[i])
        ans = dp[i];
    }
    printf("%d\n", ans == -(1<<30) ? 0 : ans);
  }
  return 0;
}
