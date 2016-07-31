#ifndef POINT3D_H
#define POINT3D_H

#include "Point.h"

class Point3D : public Point {
 protected:
  double m_z;
 public:
  Point3D(double x, double y, double z);
  Point3D();
  void set_z(double z);
  double get_z() const;
  void display_point() const;
};

#endif
