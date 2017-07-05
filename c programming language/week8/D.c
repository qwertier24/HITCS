#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/


#define N 30010

int pa[N];
int findset(int u){
  if(pa[u]!=u)
    pa[u] = findset(pa[u]);
  return pa[u];
}

int sz[N];
void union_set(int u,int v){
  u = findset(u), v= findset(v);
  sz[v] += sz[u];
  pa[u] = v;
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int kase = 1, i, n, m;
  while(scanf("%d%d",&n,&m) && n){
    for(i = 0; i < n; i++)
      pa[i] = i, sz[i] = 1;
    while(m--){
      int u, k, f;
      scanf("%d",&k);
      if(k){
        scanf("%d",&f);
        k--;
      }
      while(k--){
        scanf("%d",&u);
        if(findset(u) != findset(f))
          union_set(u,f);
      }
    }
    printf("%d\n",sz[findset(0)]);
  }
  return 0;
}
