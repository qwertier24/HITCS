#include<stdio.h>
#include<string.h>
#define REP(i,n) for(i=0; i<n; i++)
#define FOR(i,n) for(i=1; i<=n; i++)

typedef long long LL;
#define N 100010

char s[N], t[N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  while(scanf("%s%s", s, t) != EOF){
    int n = strlen(s), m = strlen(t), i = 0, j;
    REP(j,m){
      if(t[j] == s[i])
        i++;
      if(i == n)
        break;
    }
    if(i == n)
      puts("Yes");
    else
      puts("No");
  }
  return 0;
}
