#include <bits/stdc++.h>
using namespace std;
#define FOR(i, n) for(int i = 1; i <= n; i++)
#define REP(i, n) for(int i = 0; i < n; i++)
#define MP make_pair
#define FI first
#define SE second
#define VI vector<int>
#define CLR(x) memset(x, 0, sizeof(x))
#define SZ(x) (x.size())

typedef long long LL;
typedef pair<int, int> pii;

#define N 10010
#define M 10010

int src;
char buf[1010];

int adj[N][2];

vector<vector<int> > ans[N];
int vis[N];
int st[N], tp;
int id[N];
void new_path(int dep) {
  // 检查当前路径是否包含之前未出现的边
  static set<pii> edges;
  bool flag = false;
  for (int i = 1; i < dep; i++) {
    if (!edges.count(pii(st[i], st[i+1])))
      flag = true;
  }
  if (!flag)  // 当前路径所有边都出现过，所以退出
    return;

  // 加入当前路径的所有边
  for (int i = 1; i < dep; i++)
    edges.insert(pii(st[i], st[i+1]));

  // 把当前路径加入到答案中
  vector<int> vec;
  for (int i = 1; i <= dep; i++)
    vec.push_back(id[st[i]]);
  ans[dep].push_back(vec);
}
void dfs(int u, int dep) {
  st[++tp] = u;
  vis[u] = 1;

  if (adj[u][0] == 0 && adj[u][1] == 0) { // 出度为0的点，此时为递归边界
    new_path(dep);
  }

  for (int i = 0; i < 2; i++) {
    int v = adj[u][i];
    if (!v)
      continue;
    if (vis[v]) { // 当前路径中出现过的点，此时为递归边界，仅加入该点，不继续递归
      st[++tp] = v;
      new_path(dep+1);
      tp--;
    } else {
      dfs(v, dep+1);
    }
  }
  vis[u] = 0;
  tp--;
}

int pre[N];
int main() {
#ifdef QWERTIER
  freopen("in.txt", "r", stdin);
#endif

  int V = 0;
  set<int> vst;
  int E = 0;

  scanf("%d", &src);

  while (scanf("%s", buf) && buf[0] != 'E') {
    int u, v;
    char w;
    E++;
    sscanf(buf, "%d->%d, %c", &u, &v, &w);
    id[u] = u;
    id[v] = v;
    vst.insert(u);
    vst.insert(v);

    // adj[u][0]为第一条边，adj[u][1]为第二条边，当且仅当w=T时，u->v加到u的第二条边上
    adj[u][w=='T'] = v;
  }

  if (strcmp(buf, "EXT") == 0) { // Extended cases
    while (scanf("%s", buf) && buf[0] != 'E') {
      int u;
      char w;
      sscanf(buf, "%d, %c", &u, &w);
      vst.insert(u*10+1);
      E+=2;

      id[u] = u*10+1;
      int v = u*10+2;
      id[v] = u*10+2;
      adj[v][0] = adj[u][0];
      adj[v][1] = adj[u][1];

      if (w == 'A') { // AND
        adj[u][1] = v;
      } else { // OR
        adj[u][0] = v;
      }
    }
  }

  V = vst.size();

  dfs(src, 1);

  printf("CC=%d\n", E-V+2);
  FOR (i, N) {
    sort(ans[i].begin(), ans[i].end());
    for (int j = 0; j < (int)ans[i].size(); j++) {
      vector<int> &vec = ans[i][j];
      for (int k = 0; k < (int)vec.size(); k++)
        printf("%d%s", vec[k], k+1==(int)vec.size()?"\n":",");
    }
  }

  return 0;
}
