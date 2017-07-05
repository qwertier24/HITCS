#include<stdio.h>
#include<string.h>

typedef long long LL;
#define N 10010

int SUM[N<<2], *sum = SUM + 10000;
void dfs(int t, int pos){
  if(t == -1)
    return;
  int lc, rc;
  sum[pos] += t;
  scanf("%d", &lc);
  dfs(lc, pos - 1);
  scanf("%d", &rc);
  dfs(rc, pos + 1);
}
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int kase, r;
  for(kase = 1; scanf("%d", &r) && r != -1; ++kase){
    memset(SUM, 0, sizeof(SUM));
    dfs(r, 0);
    int i;
    printf("Case %d:\n", kase);
    int first = 1;
    for(i = -10000; i<=10000; i++)
      if(sum[i]){
        if(!first)
          putchar(' ');
        first = 0;
        printf("%d", sum[i]);
      }
    puts("\n");
  }
  return 0;
}
