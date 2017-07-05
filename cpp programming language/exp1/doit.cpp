#include<stdio.h>
#include<algorithm>
#include<string.h>
#include<map>
#include<set>
#include<vector>
#include<string>
#include<queue>
#include "Point.h"
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
  Point p;
  p.display_point();
  p = Point(1, 2);
  p.display_point();
  p.set_x(2);
  p.set_y(5);
  p.display_point();
  printf("%f\n", p.get_x());
  printf("%f\n", p.get_y());
  return 0;
}
