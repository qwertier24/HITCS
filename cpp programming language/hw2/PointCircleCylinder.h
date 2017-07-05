#ifndef POINTCIRCLECYLINDER_H
#define POINTCIRCLECYLINDER_H

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
