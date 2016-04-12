#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/


#define N 100010
#define MOD 1000000

int f[N], sf[N], m, n, L, R, cnt[N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, j, tmp;
  scanf("%d%d%d%d",&m,&n,&L,&R);
  for(i = 0; i < n; i++){
    scanf("%d", &tmp);
    cnt[tmp]++;
  }
  for(i = 0; i <= R; i++)
    sf[i] = 1;
  for(i = 1; i <= m; i++){
    for(j = 0; j <= R; j++){
      f[j] = (sf[j] - (j - cnt[i] - 1 >= 0 ? sf[j - cnt[i] - 1] : 0)) % MOD;
    }
    for(j = 0; j <= R; j++)
      sf[j] = ((j ? sf[j-1] : 0) + f[j]) % MOD;
  }
  printf("%d", ((sf[R] - sf[L-1]) % MOD + MOD) % MOD);
  return 0;
}
