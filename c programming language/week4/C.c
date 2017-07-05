#include<stdio.h>
#include<string.h>

typedef long long LL;

LL a[4510];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int i, k = 1500, mink, n = 1;
  LL minn;
  a[0] = 1;
  while(k--){
    minn = 1ll<<60;
    for(i = 0; i < n; i++){
      if(a[i] < minn){
        minn = a[i];
        mink = i;
      }
    } 
    a[mink] = 1ll<<60;
    a[n++] = minn * 5;
    if(minn % 5){
      a[n++] = minn * 3;
      if(minn % 3){
        a[n++] = minn * 2;
      }
    }
  }
  printf("The 1500'th ugly number is %lld.\n", minn);
  return 0;
}
