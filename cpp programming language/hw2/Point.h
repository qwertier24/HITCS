#ifndef POINT_H
#define POINT_H

class Point {
 protected:
  double m_x, m_y, m_z;
 public:
  Point();
  Point(double x, double y, double z);
  void set_x(double x);
  void set_y(double y);
  void set_z(double z);
  double get_x() const;
  double get_y() const;
  double get_z() const;
};

#endif
