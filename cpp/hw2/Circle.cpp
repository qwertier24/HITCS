#include "Circle.h"

Circle::Circle() : Point(), radius(0.0) {
}

Circle::Circle(double x, double y, double z, double r)
    : Point(x, y, z),
      radius(r) {
}

void Circle::set_radius(double r) {
  radius = r;
}

double Circle::get_radius() const {
  return radius;
}

double Circle::get_area() const {
  return radius * radius * PI;
}
