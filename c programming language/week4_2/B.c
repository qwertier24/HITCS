#include<stdio.h>
#include<string.h>
#include<math.h>
#define N 10

char g[N][N];
int n,m;

int pos[N][N];
int check(int x, int y){
  int i, j;
  for(i = 0; i < n; i++)for(j = 0; j < m; j++)
    if(pos[i][j] && (i == x || j == y || abs(j - y) == abs(i - x)))
      return 1;
  return 0;
}

int guard(){
  int i, j;
  for(i = 0; i < n; i++)
    for(j = 0; j < m; j++)
      if(!check(i,j) && g[i][j]=='X')
        return 0;
  return 1;
}

int ans;
int dfs(int u,int rem){
  int i, flag;
  if(n * m - u < rem)
    return 0;
  if(rem==0){
    if(guard())
      return 1;
    else
      return 0;
  }
  if(dfs(u+1, rem))
    return 1;
  pos[u / m][u % m] = 1;
  flag = dfs(u + 1, rem - 1);
  pos[u / m][u % m] = 0;
  if(flag)
    return 1;
  else
    return 0;
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, kase = 1;
  while(scanf("%d%d",&n,&m) && n){
    for(i = 0; i < n; i++)
      scanf("%s", g[i]);
    memset(pos, 0, sizeof(pos));
    ans = n;
    for(i = 0; i <= n * m; i++)
      if(dfs(0, i)){
        printf("Case %d: %d\n", kase++, i);
        break;
      }
  }
  return 0;
}
