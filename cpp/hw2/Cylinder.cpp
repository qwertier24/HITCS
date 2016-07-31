#include "Cylinder.h"

Cylinder::Cylinder()
    : Circle(),
      height(0.0) {
}

Cylinder::Cylinder(double x, double y, double z, double r, double h)
    : Circle(x, y, z, r),
      height(h) {
}

void Cylinder::set_height(double h) {
  height = h;
}

double Cylinder::get_height() const {
  return height;
}

double Cylinder::get_volume() const {
  return get_area() * height;
}
