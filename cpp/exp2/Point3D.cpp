#include "Point3D.h"
#include <stdio.h>

Point3D::Point3D() {
  m_x = m_y = m_z = 0;
}
Point3D::Point3D(double x, double y, double z) : Point(x, y), m_z(z) {
}
void Point3D::set_z(double z) {
  m_z = z;
}
double Point3D::get_z() const {
  return m_z;
}
void Point3D::display_point() const {
  printf("%f %f %f\n", m_x, m_y, m_z);
}
