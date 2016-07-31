#include "PointCircleCylinder.h"

Point::Point()
    : m_x(0),
      m_y(0),
      m_z(0) {
}

Point::Point(double x, double y, double z)
    : m_x(x),
      m_y(y),
      m_z(z) {
}

void Point::set_x(double x) {
  m_x = x;
}

void Point::set_y(double y) {
  m_y = y;
}

void Point::set_z(double z) {
  m_z = z;
}

double Point::get_x() const {
  return m_x;
}

double Point::get_y() const {
  return m_y;
}

double Point::get_z() const {
  return m_z;
}

Circle::Circle()
    : Point(),
      radius(0.0) {
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
