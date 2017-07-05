#include<stdio.h>
#include<string.h>
#define REP(i,n) for(i=0; i<n; i++)
#define FOR(i,n) for(i=1; i<=n; i++)

typedef long long LL;
#define N 100

int f[N];
void getf(char *s, int n){
  int i, k = -1;
  f[0] = -1;
  FOR(i, n - 1){
    while(k != -1 && s[k + 1] != s[i])
      k = f[k];
    if(s[k + 1] == s[i])
      k++;
    f[i] = k;
  }
}

char s[N];
int n;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int T;
  scanf("%d", &T);
  while(T--){
    int l;
    scanf("%s", s);
    n = strlen(s);
    getf(s, n);
    l = n - 1 - f[n - 1];
    printf("%d\n%s", (n % l)?n:l, T?"\n":"");
  }
  return 0;
}
