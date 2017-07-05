#include<stdio.h>
#include<string.h>

typedef long long LL;
#define T 1010
#define M 40

double f[M], g[M], sg[M], sf[M], p[T][M];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int m, t, n, i, j, k;
  while(scanf("%d%d%d", &m, &t, &n) && m){
    for(i = 0; i < t; i++)
      for(j = 0; j < m; j++)
        scanf("%lf", &p[i][j]);
    
    double tot1 = 1, tot2 = 1;
    for(i = 0; i < t; i++){
      double s = 0;
      memset(f, 0, sizeof(f));
      
      for(j = 0; j < m; j++)
        for(k = m; k >= 0; k--)
          f[k] = (k ? f[k - 1] * p[i][j] : 0) + f[k] * (1 - p[i][j]);
      
      sf[0] = f[j];
      for(j = 0; j <= m; j++)
        sf[j] = sf[j - 1] + f[j];
      
      tot1 *= 1 - f[0];
      tot2 *= sf[n - 1] - f[0];
    }
    printf("%.3f\n", tot1 - tot2);
  }
  return 0;
}
