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
#define M 3000000

int le[N], pe[M], ev[M], ew[M], ecnt;
void addEdge(int u, int v, int w){
  ecnt++;
  pe[ecnt] = le[u];
  le[u] = ecnt;
  ev[ecnt] = v;
  ew[ecnt] = w;
}

int dis[N];

int q[N], inq[N], fr, rr, inqn;
int spfa(int src){
  int i;
  memset(dis, 0x3f, sizeof(dis));
  q[fr = rr = 0] = src;
  dis[src] = 0;
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
      if(dis[v] > dis[u] + ew[i]){
        dis[v] = dis[u] + ew[i];
        if(!inq[v]){
          inq[v] = 1;
          inqn++;
          rr = (rr + 1) % N;
          q[rr] = v;
        }
      }
    }
  }
  return dis[1001];
}

int m, sn, dn;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  while(scanf("%d%d%d", &m, &sn, &dn) != EOF){
    int u, v, w, i;
    memset(le, 0 ,sizeof(le));
    ecnt = 0;
    while(m--){
      scanf("%d%d%d", &u, &v, &w);
      addEdge(u, v, w);
      addEdge(v, u, w);
    }
    for(i = 0; i < sn; i++){
      scanf("%d", &u);
      addEdge(0, u, 0);
    }
    for(i = 0; i < dn; i++){
      scanf("%d", &u);
      addEdge(u, 1001, 0);
    }
    printf("%d\n", spfa(0));
  }
  return 0;
}
