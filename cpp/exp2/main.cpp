#include <stdio.h>
#include "Point3D.h"

int main(){
  double x, y, z;
  scanf("%lf%lf%lf", &x,&y,&z);
  Point3D p(x, y, z);
  p.display_point();
  return 0;
}
