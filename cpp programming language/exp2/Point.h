//#pragma once
#ifndef  HIT_CS_CPP_POINT
#define HIT_CS_CPP_POINT
class Point
{
 public:
  Point();
  Point(double x, double y);
  ~Point();

  double get_x() const;
  double get_y() const;

  void set_x(double x);
  void set_y(double y);

  void display_point() const;

 protected:
  double m_x;
  double m_y;
};


#endif
