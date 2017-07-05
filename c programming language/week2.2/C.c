#include<stdio.h>
#include<string.h>

typedef long long LL;
#define N 100

int ini[N], fin[N], n;
LL move(int k, int t){
  if(k < 0)
    return 0;
  if(ini[k] == t)
    return move(k - 1, t);
  else
    return move(k - 1, 3 - ini[k] - t) + 1 + (1ll << k) - 1;
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int kase = 1;
  while(scanf("%d", &n) && n){
    int m = n - 1, i;
    for(i = 0; i < n; i++){scanf("%d", &ini[i]); ini[i]--;}
    for(i = 0; i < n; i++){scanf("%d", &fin[i]); fin[i]--;}
    while(m >= 0 && ini[m] == fin[m])m--;
    printf("Case %d: ", kase++);
    if(m < 0)
      puts("0");
    else{
      LL ans = move(m - 1, 3 - fin[m] - ini[m]) + 1, c = 3 - fin[m] - ini[m];
      for(i = m - 1; i >= 0; i--){
        if(fin[i] != c){
          ans += (1ll << i);
          c = 3 - fin[i] - c;
        }
      }
      printf("%lld\n", ans);
    }
  }
  return 0;
}
