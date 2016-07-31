#ifndef CIRCLE_H
#define CIRCLE_H

#include "Point.h"

class Circle : public Point {
 protected:
  double radius;
  const double PI = 3.1415926535897932384626;
 public:
  Circle();
  Circle(double x, double y, double z, double r);
  void set_radius(double r);
  double get_radius() const;
  double get_area() const;
};

#endif
