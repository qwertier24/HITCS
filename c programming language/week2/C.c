#include<stdio.h>
#include<string.h>
#define REP(i,n) for(i=0; i<n; i++)
#define FOR(i,n) for(i=1; i<=n; i++)

typedef long long LL;

int count(int n){
  int ret = 0;
  while(n)n/=10,ret++;
  return ret;
}

LL cnt[1000010], cnt2[1000010];
void init(){
  int i;
  FOR(i, 1000000)
    cnt[i] = cnt[i-1] + count(i);
  FOR(i, 1000000)
    cnt2[i] = cnt2[i-1] + cnt[i];
}

int p10[10] = {1, 10, 100, 1000, 10000, 1e6, 1e7, 1e8, 1e9};
int getans(int m, int n){
  int i, rem = n - cnt2[m];
  int lo = 1, hi = m + 1;
  while(lo < hi){
    int mi = (lo + hi) >> 1;
    if(rem <= cnt[mi])
      hi = mi;
    else
      lo = mi + 1;
  }
  return (lo / p10[cnt[lo] - rem]) % 10;
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  init();
  int T;
  scanf("%d", &T);
  while(T--){
    int n;
    scanf("%d", &n);
    int lo = 0, hi = 1000000;
    while(lo < hi){
      int mi = (lo + hi + 1) / 2;
      if(cnt2[mi] < n)
        lo = mi;
      else
        hi = mi - 1;
    }
    printf("%d\n", getans(lo, n));
  }
  return 0;
}
