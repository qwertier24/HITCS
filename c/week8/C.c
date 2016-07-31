#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/

#define N 50010

int pa[N];
int findset(int u){
  if(pa[u]!=u)
    pa[u] = findset(pa[u]);
  return pa[u];
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int kase = 1, i, n, m;
  while(scanf("%d%d",&n,&m) && n){
    for(i = 1; i <= n; i++)
      pa[i] = i;
    int ans = n;
    while(m--){
      int u, v;
      scanf("%d%d",&u,&v);
      if(findset(u) != findset(v)){
        pa[pa[u]] = pa[v];
        ans--;
      }
    }
    printf("Case %d: %d\n", kase++, ans);
  }
  return 0;
}
