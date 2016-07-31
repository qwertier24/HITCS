#include <stdio.h>
#include <algorithm>
#include <string.h>
#include <map>
#include <set>
#include <vector>
#include <string>
#include <queue>
#include <iostream>
#include "Date.cpp"
#define REP(i,n) for(int i=0; i<n; i++)
#define FOR(i,n) for(int i=1; i<=n; i++)

typedef long long LL;
using namespace std;

typedef pair<int,int> pii;
#define MP make_pair

int main(){
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif
  try {
    Date d(1900,9,30);
    d.showDate();
  } catch (const char* const errorMessage) {
    cout << errorMessage;
  }
  return 0;
}
