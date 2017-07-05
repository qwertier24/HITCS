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

typedef struct{
  int s,t,w;
}Edge;

Edge e[N*N];

int pa[N];
int findset(int u){
  if(pa[u]!=u)
    pa[u] = findset(pa[u]);
  return pa[u];
}

int cmp(const void *i,const void *j){
  return ((Edge*)i) -> w - ((Edge*)j) -> w;
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int n, i, j;
  while(~scanf("%d",&n)){
    int ans = 0, m = 0;
    for(i = 0; i < n; i++)
      pa[i] = i;
    for(i = 0; i < n ; i++){
      for(j = 0; j < n; j++){
        int w;
        scanf("%d", &w);
        e[m].s = i;
        e[m].t = j;
        e[m++].w = w;
      }
    }
    qsort(e, m, sizeof(Edge), cmp);
    for(i = 0 ; i < m; i++){
      int u = e[i].s, v = e[i].t;
      if(findset(u) != findset(v)){
        ans += e[i].w;
        pa[pa[u]] = pa[v];
      }
    }
    printf("%d\n",ans);
  }
  return 0;
}
