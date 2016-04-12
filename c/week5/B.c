#include<stdio.h>
#include<string.h>
#define N 110
#define max(a,b) ((a)<(b)?(b):(a))

int n, m;

int num[N][N], f[N][N];
int dx[4] = {0, 0, -1, 1}, dy[4] = {-1, 1, 0, 0};
int dp(int x, int y){
  int k, xt, yt;
  if(f[x][y] != -1)
    return f[x][y];
  f[x][y] = 0;
  for(k = 0; k < 4; k++){
    xt = x + dx[k];
    yt = y + dy[k];
    if(xt >= 0 && xt < n && yt >= 0 && yt < m && num[xt][yt] < num[x][y])
      f[x][y] = max(f[x][y], dp(xt, yt));
  }
  return (f[x][y] += 1);
}

char name[1000];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int T, ans, i, j;
  scanf("%d", &T);
  while(T--){
    scanf("%s", name);
    printf("%s: ", name);
    scanf("%d%d", &n, &m);
    for(i = 0; i < n; i++)
      for(j = 0; j < m; j++)
        scanf("%d", &num[i][j]);
    ans = 0;
    memset(f, -1, sizeof(f));
    for(i = 0; i < n; i++)
      for(j = 0; j < m; j++)
        ans = max(ans, dp(i, j));
    printf("%d\n", ans);
  }
  return 0;
}
