#include<stdio.h>
#include<string.h>
#include<math.h>

typedef long long LL;

#define N 1010
#define eps 1e-7

struct Line{
  double l, r;
}line[N];

int cmp(const void* i, const void* j){
  if(((struct Line*)i)->l < ((struct Line*)j)->l)
    return -1;
  else if(((struct Line*)i)->l == ((struct Line*)j)->l)
    return 0;
  else
    return 1;
}

int n, d;
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, j, kase;
  for(kase = 1; scanf("%d%d", &n, &d) && n; ++kase){
    int flag = 1, ans = 1;
    double rr;
    for(i = 0; i < n; i++){
      int x, y;
      scanf("%d%d", &x, &y);
      if(y > d)
        flag = 0;
      else{
        line[i].l = x - sqrt(d * d - y * y);
        line[i].r = x + sqrt(d * d - y * y);
      }
    }
    printf("Case %d: ", kase);
    if(!flag){
      puts("-1");
      continue;
    }
    qsort(line, n, sizeof(struct Line), cmp);
    rr = line[0].r;
    for(i = 1; i < n; i++){
      if(rr < line[i].l){
        ans++;
        rr = line[i].r;
      }else if(rr > line[i].r){
        rr = line[i].r;
      }
    }
    printf("%d\n", ans);
  }
  return 0;
}
