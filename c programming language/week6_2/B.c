#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int max(int a, int b){return a>b?a:b;}
int min(int a, int b){return a<b?a:b;}

typedef long long LL;

/*
qsort(a, n, sizeof(int), tmp);
bsearch(&key, a, n, sizeof(int), cmp);
*/

#define N 200

typedef struct Block{
  int l,w,h;
}Block;
void init(Block *bl, int a,int b,int c){
  bl->l = a;
  bl->w = b;
  bl->h = c;
}

Block A[N];
int cmp(const void *a, const void *b){
  return ((Block*)a) -> l - ((Block*)b) -> l;
}
int n,m,dp[N],a[N],b[N],c[N];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, j, kase=1;
  while(scanf("%d",&n) && n){
    for(i = 0; i < n; i++){
      scanf("%d%d%d",&a[i],&b[i],&c[i]);
      init(&A[i*6],a[i],b[i],c[i]);
      init(&A[i*6+1],a[i],c[i],b[i]);
      init(&A[i*6+2],b[i],a[i],c[i]);
      init(&A[i*6+3],b[i],c[i],a[i]);
      init(&A[i*6+4],c[i],a[i],b[i]);
      init(&A[i*6+5],c[i],b[i],a[i]);
    }
    n = n * 6;
    qsort(A, n, sizeof(Block), cmp);
    int ans = 0;
    for(i = 0; i < n; i++){
      dp[i] = A[i].h;
      for(j = 0; j < i; j++)
        if(A[j].w < A[i].w && A[j].l < A[i].l)
          dp[i] = max(dp[i], dp[j] + A[i].h);
      ans = max(ans, dp[i]);
    }
    printf("Case %d: maximum height = %d\n", kase++, ans);
  }
  return 0;
}
