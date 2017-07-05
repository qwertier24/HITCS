#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/


#define N 110

int g[N][N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int n, m;
  while(scanf("%d%d", &n, &m) && n){
    int i, j, k;
    memset(g, 0x3f, sizeof(g));
    while(m--){
      int u, v, w;
      scanf("%d%d%d",&u,&v,&w);
      u--, v--;
      g[u][v] = g[v][u] = min(g[u][v], w);
    }
    for(k = 0; k < n; k++)
      for(i = 0; i < n; i++)
        for(j = 0; j < n; j++)
          g[i][j] = min(g[i][j], g[i][k] + g[k][j]);
    printf("%d\n", g[0][n - 1]);
  }
  return 0;
}
