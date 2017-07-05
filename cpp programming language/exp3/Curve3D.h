#ifndef CURVE3D_H
#define CURVE3D_H

#include "Point3D.h"

class Curve3D {
 protected:
  class Node : public Point3D {
    /*
      Node in the linked list.
     */
   public:
    Node *next_iter;
    Node();
    Node(Point3D _point);
    static double GetDistance(Node p1, Node p2);
  };
  Node *first;  // The first node in the linked list
  int point_n;  // The number of points in this curve
  
 public:
  Curve3D();
  Curve3D(const Curve3D &curve);
  ~Curve3D();
  void DisplayCurve() const;
  double CurveLen() const;
  const Curve3D operator+(const Point3D& p) const;
};

#endif
