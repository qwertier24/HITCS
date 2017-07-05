#include<stdio.h>
#include<string.h>

typedef long long LL;
#define N 4

int n;

int mark[N][N];

char g[4][4];

int dx[4] = {0,0,-1,1}, dy[4] = {-1,1,0,0};
int check(int x, int y){
  int xt, yt, k;
  for(k = 0; k < 4; k++)
    for(xt = x + dx[k], yt = y + dy[k]; xt >=0 && xt < n && yt >= 0 && yt < n && g[xt][yt] != 'X'; xt += dx[k], yt += dy[k])
      if(mark[xt][yt])
        return 0;
  return 1;
}

int ans;
void dfs(int dep, int cnt){
  int x = dep / n, y = dep % n, i;
  if(dep == n * n){
    if(ans < cnt)
      ans = cnt;
    return;
  }
  if(g[x][y] != 'X' && check(x, y)){
    mark[x][y] = 1;
    dfs(dep + 1, cnt + 1);
    mark[x][y] = 0;
  }
  dfs(dep + 1, cnt);
  return;
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  while(scanf("%d", &n) && n){
    int i;
    for(i = 0; i < n; i++)
      scanf("%s", g[i]);
    ans = 0;
    dfs(0, 0);
    printf("%d\n", ans);
  }
  return 0;
}

