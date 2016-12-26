#include<stdio.h>
#include<algorithm>
#include<string.h>
#include<map>
#include<set>
#include<vector>
#include<string>
#include<queue>
#include<iostream>
#define REP(i, n) for(int i = 0, ed_##i = n; i < ed_##i; i++)
#define FOR(i, n) for(int i = 1, ed_##i = n; i <= ed_##i; i++)
#define bit(x) (1 << (x))
#define bitl(x) (1LL << (x))
#define sqr(x) ((x) * (x))
#define sz(x) ((int)(x.size()))
#define cnti(x) (__builtin_popcount(x))
#define cntl(x) (__builtin_popcountll(x))
#define clzi(x) (__builtin_clz(x))  // Leading zeros
#define clzl(x) (__builtin_clzll(x))
#define ctzi(x) (__builtin_ctz(x))
#define ctzl(x) (__builtin_ctzll(x))

#ifdef QWERTIER
#define err(x) cerr << #x << " : " << x << endl
#else
#define err(x)
#endif

typedef long long LL;
using namespace std;

typedef pair<int,int> pii;
#define MP make_pair

#define N 100
int dis[N], g[N][N], row[N], col[N], lst[N], n, vis[N], v[N], vsz;
char name[N][N], tmp[N];

void input_and_calc() {
  scanf("nodeNum:%d", &n);
  scanf("\nnodeValue:");
  for (int i = 0; i < n; i++) {
    scanf("%[^, \n]", name[i]);
    getchar();
  }
  for (int i = 0; i < n; i++) {
    scanf("%s", tmp);
    for (int j = 0; j < n; j++) {
      if (strcmp(name[j], tmp) == 0) {
        col[i] = j;
      }
    }
  }
  for (int i = 0; i < n; i++) {
    scanf("%s", tmp);
    for (int j = 0; j < n; j++) {
      if (strcmp(name[j], tmp) == 0) {
        row[i] = j;
      }
    }
    for (int j = 0; j < n; j++) {
      scanf("%d", &g[row[i]][col[j]]); 
    }
  }
  lst[0] = -1;
  memset(dis, 0x3f, sizeof(dis));
  memset(vis, 0, sizeof(vis));
  dis[0] = 0;
  for (int k = 0; k < n; k++) {
    int i = -1;
    for (int j = 0; j < n; j++) {
      if (!vis[j] && (i == -1 || dis[j] < dis[i])) {
        i = j;
      }
    }
    vis[i] = 1;
    for (int j = 0; j < n; j++) {
      if (g[i][j] != -1 && dis[j] > dis[i] + g[i][j]) {
        dis[j] = dis[i] + g[i][j];
        lst[j] = i;
      }
    }
  }
}

int main(){
#ifdef QWERTIER
#endif
  {
    freopen("ex3_Graph1.txt", "r", stdin);
    puts("graph1:");
    input_and_calc();
    for (int i = 1; i < n; i++) {
      printf("%s->%s ", name[0], name[i]);
      vsz = 0;
      int cur = lst[i];
      while (cur != -1) {
        v[vsz++] = cur;
        cur = lst[cur];
      }
      for (int j = vsz - 1; j >= 0; j--)
        printf("%s,", name[v[j]]);
      printf("%s", name[i]);
      for (int j = 0; j < 4 - vsz; j++)
        printf("   ");
      printf(" value=%d\n", dis[i]);
    }
  }
  {
    freopen("ex3_Graph2.txt", "r", stdin);
    puts("graph2:");
    input_and_calc();
    printf("%s->%s ", name[0], name[7]);
    printf("path:");
    vsz = 0;
    int cur = lst[7];
    while (cur != -1) {
      v[vsz++] = cur;
      cur = lst[cur];
    }
    for (int j = vsz - 1; j >= 0; j--)
      printf("%s,", name[v[j]]);
    printf("%s", name[7]);
    printf(" value=%d\n", dis[7]);
  }
  return 0;
}
