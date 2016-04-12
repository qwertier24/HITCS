#include<stdio.h>
#include<string.h>
#define REP(i,n) for(i=0; i<n; i++)
#define FOR(i,n) for(i=1; i<=n; i++)

typedef long long LL;

int check(int t, int t2){
  int mark[10] = {0};
  int i;
  if(t >= 100000 || t2 >= 100000)
    return 0;
  FOR(i, 5){
    if(mark[t % 10])
      return 0;
    mark[t % 10] = 1;
    t /= 10;
  }
  FOR(i, 5){
    if(mark[t2 % 10])
      return 0;
    mark[t2 % 10] = 1;
    t2 /= 10;
  }
  return 1;
}
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int n, first = 1;
  while(scanf("%d", &n) && n != 0){
    if(!first)
      puts("");
    first = 0;
    int i, flag = 0;
    for(i = 1000; i<100000; i++)
      if(check(i * n, i)){
        printf("%d / %s%d = %d\n", i*n, i<10000?"0":"", i, n);
        flag = 1;
      }
    if(!flag)
      printf("There are no solutions for %d.\n", n);
  }
  return 0;
}
