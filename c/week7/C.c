#include<stdio.h>
#include<string.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/


#define N 1024
#define M 2000000

int le[N], pe[M], ev[M], ew[M], ecnt;
void addEdge(int u, int v, int w){
  ecnt++;
  pe[ecnt] = le[u];
  le[u] = ecnt;
  ev[ecnt] = v;
  ew[ecnt] = w;
}

int dis[N];

int n;

int q[N], inq[N], fr, rr, inqn;
int spfa(int src){
  int i;
  q[fr = rr = 0] = src;
  memset(dis, 0, sizeof(dis));
  dis[src] = 1<<30;
  inqn = 1;
  inq[src] = 1;
  memset(inq, 0, sizeof(inq));
  while(inqn){
    int u = q[fr];
    fr = (fr + 1) % N;
    inqn--;
    inq[u] = 0;
    for(i = le[u]; i; i=pe[i]){
      int v = ev[i];
      if(dis[v] < min(dis[u], ew[i])){
        dis[v] = min(dis[u], ew[i]);
        if(!inq[v]){
          inq[v] = 1;
          inqn++;
          rr = (rr + 1) % N;
          q[rr] = v;
        }
      }
    }
  }
  return dis[n - 1];
}
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int T, m, kase = 1;
  scanf("%d", &T);
  while(T--){
    int u, v, w;
    scanf("%d%d", &n, &m);
    memset(le, 0 ,sizeof(le));
    ecnt = 0;
    while(m--){
      scanf("%d%d%d", &u, &v, &w);
      addEdge(u - 1, v - 1, w);
      addEdge(v - 1, u - 1, w);
    }
    printf("Scenario #%d:\n%d\n\n", kase++, spfa(0));
  }
  return 0;
}
