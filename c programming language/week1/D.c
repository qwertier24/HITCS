#include<stdio.h>
#include<string.h>
#define REP(i,n) for(i=0; i<n; i++)
#define FOR(i,n) for(i=1; i<=n; i++)

typedef long long LL;

#define n 5
#define above 0
#define below 1
#define right 2
#define left 3

int curx, cury;

int getdir(char c){
  if(c=='A')
    return above;
  else if(c=='B')
    return below;
  else if(c=='R')
    return right;
  else
    return left;
}

int check(int c){
  return c < n && c >= 0;
}

char g[n+1][n+1];

int dx[4] = {-1, 1, 0, 0}, dy[4] = {0, 0, 1, -1};
int move(int dir){
  if(!check(curx + dx[dir]) || !check(cury + dy[dir]))
    return 0;
  g[curx][cury] = g[curx + dx[dir]][cury + dy[dir]];
  curx += dx[dir];
  cury += dy[dir];
  g[curx][cury] = ' ';
  return 1;
}

void output(){
  int i, j;
  REP(i,n){
    REP(j,n)
      printf("%c%s", g[i][j], j==n-1?"":" ");
    puts("");
  }
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, j, kase;
  for(kase = 1; ; kase++){
    int fail = 0;
    fgets(g[0], sizeof(g[0]), stdin);
    getchar();
    if(g[0][0] == 'Z')
      break;
    printf("%sPuzzle #%d:\n", (kase == 1)?"":"\n", kase);
    FOR(i, n-1){
      fgets(g[i], sizeof(g[i]), stdin);
      getchar();
    }
    REP(i, n)REP(j, n)
      if(g[i][j] == ' ')
        curx = i, cury = j;
    while(1){
      char moves[100];
      int m;
      scanf("%s",moves);
      m = strlen(moves);
      REP(i,m){
        if(moves[i] == '0')
          continue;
        if(!move(getdir(moves[i]))){
          fail = 1;
          break;
        }
      }
      if(strstr(moves, "0") != NULL){
        if(fail)
          puts("This puzzle has no final configuration.");
        else
          output();
        break;
      }
    }
    getchar();
  }
  return 0;
}
