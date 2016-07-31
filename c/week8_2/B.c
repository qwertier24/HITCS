#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/

#define N 10010
#define M 100010
int le[N],ev[M],pe[M],ecnt,mark[M];
void addEdge(int u,int v){
  ecnt++;
  pe[ecnt]=le[u];
  le[u]=ecnt;
  ev[ecnt]=v;
}

void dfs(int u){
  int i;
  for(i = le[u]; i; i = pe[i]){
    int v = ev[i];
    if(!mark[i]){
      mark[i] = 1;
      dfs(v);
    }
  }
  printf("%d\n",u+1);
}

int n,m;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int u, v, i;
  scanf("%d%d",&n,&m);
  while(m--){
    scanf("%d%d",&u,&v);
    u--,v--;
    addEdge(u,v);
    addEdge(v,u);
  }
  dfs(0);
  return 0;
}
