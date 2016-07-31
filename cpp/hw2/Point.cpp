#include "Point.h"

Point::Point() {
  m_x = m_y = m_z = 0;
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
