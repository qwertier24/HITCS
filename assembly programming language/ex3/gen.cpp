#include<stdio.h>
#include<algorithm>
#include<string.h>
#include<map>
#include<set>
#include<vector>
#include<string>
#include<queue>
#include<iostream>
#define REP(i, n) for(int i = 0, ed_##i = n; i < ed_##i; i++)
#define FOR(i, n) for(int i = 1, ed_##i = n; i <= ed_##i; i++)
#define bit(x) (1 << (x))
#define bitl(x) (1LL << (x))
#define sqr(x) ((x) * (x))
#define sz(x) ((int)(x.size()))
#define cnti(x) (__builtin_popcount(x))
#define cntl(x) (__builtin_popcountll(x))
#define clzi(x) (__builtin_clz(x))  // Leading zeros
#define clzl(x) (__builtin_clzll(x))
#define ctzi(x) (__builtin_ctz(x))
#define ctzl(x) (__builtin_ctzll(x))

#ifdef QWERTIER
#define err(x) cerr << #x << " : " << x << endl
#else
#define err(x)
#endif

typedef long long LL;
using namespace std;

typedef pair<int,int> pii;
#define MP make_pair

/*
int strlen(char *s) {  // sub_401760
}
void reverse(char* seed, int len) {  // sub_401072
}
*/
void sub_401019(unsigned char *w, int len) {
  int a, b, c;
  a = w[0] >> 7;
  b = len - 1;
  while (b >= 0) {
    c = w[b] >> 7;
    w[b] = w[b] << 1;
    w[b] = w[b] ^ (a&0xff);
    a = c;
    b--;
  }
}

void sub_40100F(char *s, char* t, int len) {
  char a[64];
  int b,c;
  strncpy(a, s, len);
  
  a[len+1] = a[len] = 0;
  len += 2;
  b = len << 3;

  for (; b > 0x10; b--) {
    c = *(int*)a&0xff&0x80;
    sub_401019((unsigned char*)a, len);
    if (c == 0) 
      continue;
    a[0] ^= 0x80;
    a[1] ^= 0x05;
  }
  strncpy(t, a, 2);
  return;
}

void sub_4011D2(char* seed, char* pwd) {
  int local_5, local_4;
  char local_3[4];
  local_5 = strlen(seed);
  reverse(seed, seed + local_5);
  sub_40100F(seed, local_3, local_5);
  for (local_4 = 0; local_4 < 2; local_4++) {
    sprintf(pwd+local_4*2, "%02X", (unsigned char)local_3[local_4]);
  }
}

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif
  char s[64], t[64];
  strcpy(s, "mayuk");
  //scanf("%s", s);
  sub_4011D2(s, t);
  printf("%s\n", t);
  return 0;
}
