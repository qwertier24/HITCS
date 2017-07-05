#include<stdio.h>
#include<string.h>

typedef long long LL;

#define N 1000010

int team[N];
char op[10];

int q[1010][1010], fr[1010], rr[1010];
int Q[1010], FR, RR, INQ[1010];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int kase = 1, t, i, j;
  while(scanf("%d", &t) && t){
    int n;
    for(i = 0; i < t; i++){
      int tmp;
      scanf("%d", &n);
      for(j = 0; j < n; j++){
        scanf("%d", &tmp);
        team[tmp] = i;
      }
    }
    printf("Scenario #%d\n", kase++);
    FR = 0, RR = -1;
    for(i = 0; i< t; i++)
      fr[i] = 0, rr[i] = -1;
    memset(INQ, 0, sizeof(INQ));
    while(scanf("%s", op) && op[0] != 'S'){
      if(op[0] == 'E'){
        int id;
        scanf("%d", &id);
        q[team[id]][++rr[team[id]]] = id;
        if(!INQ[team[id]]){
          INQ[team[id]] = 1;
          Q[++RR] = team[id];
        }
      }else{
        while(fr[Q[FR]] > rr[Q[FR]]){
          INQ[Q[FR++]] = 0;
        }
        printf("%d\n", q[Q[FR]][fr[Q[FR]]++]);
      }
    }
    puts("");
  }
  return 0;
}
