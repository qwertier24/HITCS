#include<stdio.h>
#include<string.h>

typedef long long LL;

int a[1010], b[1010];
char s[1010];
int calc(int l, int r, int* H, int* W){
  if(l == r){
    *H = a[s[l] - 'A'];
    *W = b[s[l] - 'A'];
    return 0;
  }
  if(s[l] != '('){
    *H = a[s[l] - 'A'];
    int Ht, Wt, ret;
    ret = calc(l + 1, r, &Ht, &Wt);
    if(ret == -1 || b[s[l] - 'A'] != Ht)
      return -1;
    else
      *W = Wt;
    return (*H) * Ht * (*W) + ret;
  }else if(s[r] != ')'){
    *W = b[s[r] - 'A'];
    int Ht, Wt, ret;
    ret = calc(l, r - 1, &Ht, &Wt);
    if(ret == -1 || a[s[r] - 'A'] != Wt)
      return -1;
    else
      *H = Ht;
    return (*H) * Wt * (*W) + ret;
  }else{
    int c = -1, i;
    for(i = l + 1; i <= r; i++){
      if(s[i] == '(')
        c--;
      else if(s[i] == ')')
        c++;
      if(!c){
        if(r == i)
          return calc(l + 1, r - 1, H, W);
        int Wt, Ht;
        int ls = calc(l + 1, i - 1, H, &Wt), rs = calc(i + 1, r, &Ht, W);
        if(ls == -1 || rs == -1 || (Wt != Ht))
          return -1;
        else
          return ls + rs + (*H) * (*W) * Ht;
      }
    }
  }
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int m, i;
  scanf("%d", &m);
  for(i = 0; i < m; i++){
    char ch[3];
    scanf("%s", ch);
    scanf("%d%d", &a[ch[0] - 'A'], &b[ch[0] - 'A']);
  }
  while(scanf("%s", s)!=EOF){
    int n = strlen(s), t1, t2;
    int ans = calc(0, n-1, &t1, &t2);
    if(ans == -1)
      puts("error");
    else
      printf("%d\n", ans);
  }
  return 0;
}
