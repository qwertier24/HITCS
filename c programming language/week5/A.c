#include<stdio.h>
#include<string.h>
#define N 25010

typedef unsigned long long ULL;
#define mod 1000009
#define seed 233ull

char s[20];
void get_h(char* s, ULL* h){
  int c = 0;
  while(*s){
    c++;
    h[c] = h[c - 1] * 233 + *s;
    s++;
  }
}

int hcnt, val[mod], lh[mod], ph[N];
ULL hsh[N];
void insert(ULL h,int dp){
  int pos = h % mod, i;
  for(i = lh[pos]; i; i = ph[i])
    if(hsh[i] == h){
      val[i] = dp;
      return;
    }
  ++hcnt;
  ph[hcnt] = lh[pos];
  lh[pos] = hcnt;
  hsh[hcnt] = h;
  val[hcnt] = dp;
}

int getdp(ULL h){
  int pos = h % mod, i;
  for(i = lh[pos]; i; i = ph[i])
    if(hsh[i] == h)
      return val[i];
  return 0;
}

ULL psd[20];
void init(){
  int i;
  psd[0] = 1;
  for(i = 1; i < 20; i++)
    psd[i] = psd[i - 1] * seed;
}

ULL h[20];
int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif 
  int ans = 0, n = 0;
  init();
  while(scanf("%s", s + 1) != EOF){
    int l, tmp, i, j, dp = 0;
    get_h(s + 1, h);
    l = strlen(s + 1);
    
    dp = 1;
    /* add */
    for(i = 0; i <= l; i++)
      for(j = 'a'; j < 'z'; j++){
        tmp = getdp(h[l] - h[i] * psd[l - i] + (h[i] * seed + j) * psd[l - i]);
        if(tmp + 1 > dp)
          dp = tmp + 1;
      }
    
    /* delete */
    for(i = 1; i <= l; i++){
      tmp = getdp(h[l] - h[i] * psd[l - i] + h[i - 1] * psd[l - i]);
      if(tmp + 1 > dp)
        dp = tmp + 1;
    }
    
    /* modify */
    for(i = 1; i <= l; i++){
      for(j = 'a'; j < 'z'; j++){
        tmp = getdp(h[l] + (ULL)(j - s[i]) * psd[l - i]);
        if(tmp + 1 > dp)
          dp = tmp + 1;
      }
    }
    
    if(ans < dp)
      ans = dp;
    insert(h[l], dp);
  }
  printf("%d\n", ans);
  return 0;
}
