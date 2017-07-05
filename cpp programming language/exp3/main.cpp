#include<stdio.h>
#include<algorithm>
#include<string.h>
#include<map>
#include<set>
#include<vector>
#include<string>
#include<queue>
#define REP(i,n) for(int i=0; i<n; i++)
#define FOR(i,n) for(int i=1; i<=n; i++)

typedef long long LL;
using namespace std;

typedef pair<int,int> pii;
#define MP make_pair
#include "Curve3D.h"

int main() {
#ifdef QWERTIER
  freopen("in.txt","r",stdin);
#endif
  Curve3D x;
  
  Point3D p1(1,2,3);
  Point3D p2(4, 5, 6);
  Point3D p3(783274,32487,38787);
  
  x.DisplayCurve();
  (x + p1).DisplayCurve();
  (x + p1 + p2).DisplayCurve();
  (x + p1 + p2 + p3).DisplayCurve();
  printf("%f\n", (x + p1 + p2 + p3).CurveLen());
  return 0;
}
