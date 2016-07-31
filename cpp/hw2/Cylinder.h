#ifndef CYLINDER_H
#define CYLINDER_H

#include "Circle.h"

class Cylinder : public Circle {
 protected:
  double height;
 public:
  Cylinder();
  Cylinder(double x, double y, double z, double r, double h);
  void set_height(double h);
  double get_height() const;
  double get_volume() const;
};

#endif
