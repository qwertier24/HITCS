#include<stdio.h>
#include<string.h>

typedef long long LL;
#define N 20

int m, n;

int p3[20], vali[100000], dig[100000][11];
void init(){
  int i, mark[20], S, cnt = 0;
  p3[0] = 1;
  for(i = 1; i <= m; i++)
    p3[i] = p3[i - 1] * 3;
  
  for(S = 0; S < p3[m]; S++){
    vali[S] = 1;
    
    for(i = 0; i < m; i++)
      dig[S][i] = S / p3[i] % 3;
    
    memset(mark, 0, sizeof(mark));
    for(i = 0; i < m; i++)
      if(dig[S][i] == 2)
        mark[i] = 1;
    
    for(i = 1; i < m - 1; i++)
      if(mark[i] + mark[i - 1] + mark[i + 1] > 1)
        vali[S] = 0;
    
    memset(mark, 0, sizeof(mark));
    for(i = 0; i < m; i++)
      if(dig[S][i] == 1)
        mark[i] = 1;
    
    for(i = 1; i < m - 1; i++)
      if(mark[i] + mark[i - 1] + mark[i + 1] > 1)
        vali[S] = 0;
    
    if(vali[S])
      cnt++;
  }
}

int trans(int S0){
  int i;
  for(i = 0; i < m; i++)
    if(dig[S0][i])
      S0 -= p3[i];
  return S0;
}

int ans;

char g[110][20];
int dp[2][100000], cur, lst;
int t;
void update(int S, int i, int j, int lpos, int cnt, int S0){
  t++;
  if(dp[cur][S] < cnt)
    dp[cur][S] = cnt;
  if(ans < dp[cur][S])
    ans = dp[cur][S];
  if(j >= m)
    return;
  update(S, i, j + 1, lpos, cnt, S0);
  if(j - lpos <= 2 || g[i][j] == 'H' || dig[S0][j])
    return;
  update(S + p3[j] * 2, i, j + 1, j, cnt + 1, S0);
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  scanf("%d %d", &n, &m);
  init();
  int i, S0, S, j;
  for(i = 0; i < n; i++)
    scanf("%s", g[i]);

  cur = 0, lst = 1;
  update(0, 0, 0, -100, 0, 0);

  for(i = 1; i < n; i++){
    lst ^= 1, cur ^= 1;
    update(0, i, 0, -100, 0, 0);
    for(S0 = 0; S0 < p3[m]; S0++)if(vali[S0] && dp[lst][S0]){
        S = trans(S0);
        update(S, i, 0, -100, dp[lst][S0], S0);
    }
  }
  printf("%d", ans);
  return 0;
}
