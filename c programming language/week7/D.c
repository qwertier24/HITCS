#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/


#define N 512
int g[N][N];

int n, m, Q;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int u, v, w, i, j, k;
  scanf("%d%d%d", &n, &m, &Q);
  memset(g, 0x3f, sizeof(g));
  while(m--){
    scanf("%d%d%d", &u, &v, &w);
    u--, v--;
    g[u][v] = min(g[u][v], w);
  }
  for(k = 0; k < n; k++)
    for(i = 0; i < n; i++)
      for(j = 0; j < n; j++)
        g[i][j] = min(g[i][j], max(g[i][k], g[k][j]));
  while(Q--){
    scanf("%d%d", &u, &v);
    printf("%d\n", g[u - 1][v - 1] > (1<<29) ? -1 : g[u - 1][v - 1]);
  }
  return 0;
}
