#include<stdio.h>
#include<string.h>

typedef long long LL;
#define N 130

int st[N], tp;
int trans(char c){
  switch(c){
  case '[':
    return 0;
    break;
  case ']':
    return 1;
    break;
  case '(':
    return 2;
    break;
  case ')':
    return 3;
    break;
  }
}

char s[1000];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int T, i;
  scanf("%d",&T);
  getchar();
  while(T--){
    gets(s);
    tp = -1;
    int n = strlen(s), flag = 1;
    for(i = 0; i < n; i++){
      if(trans(s[i]) & 1){
        if(tp < 0 || (st[tp] >> 1) != (trans(s[i]) >> 1)){
          flag = 0;
          break;
        }else
          tp--;
      }else{
        st[++tp] = trans(s[i]);
      }
    }
    if(flag && tp == -1)
      puts("Yes");
    else
      puts("No");
  }
  return 0;
}
