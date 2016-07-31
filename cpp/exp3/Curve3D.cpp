#include "Curve3D.h"
#include <cstdio>
#include <cmath>

Curve3D::Curve3D() {
  first = new Node();
  point_n = 1;
}

Curve3D::Curve3D(const Curve3D &curve) {
  // Copy curve's linked list to construct this curve
  first = NULL;
  point_n = curve.point_n;
  Node *iter_prev_node = NULL, *iter_curve = curve.first;
  while (iter_curve != NULL) {
    Node *iter_new_node = new Node(*iter_curve);  // Copy one node to this curve's list
    if (iter_prev_node != NULL) 
      iter_prev_node->next_iter = iter_new_node;
    else 
      first = iter_new_node;
    iter_prev_node = iter_new_node;
    iter_curve = iter_curve->next_iter;
  }
}

Curve3D::~Curve3D() {
  Node *iter = first; 
  while (iter != NULL) {
    Node *iter_tmp = iter;   
    iter = iter->next_iter;  // Move to the next node
    delete iter_tmp;         // Delete this node
  }
}

void Curve3D::DisplayCurve() const {
  Node *iter = first;
  printf("Display Curve(%d Point(s)):\n", point_n);
  while (iter != NULL) {
    iter->display_point();
    iter = iter->next_iter;
  }
  puts("----END----");
}

double Curve3D::CurveLen() const {
  double length = 0;
  Node *iter = first;
  while (iter != NULL) {
    Node *iter_tmp = iter;
    iter = iter->next_iter;  // Move to the next node
    if (iter != NULL)
      length += Node::GetDistance(*iter, *iter_tmp); // Add the length of this line to answer
  }
  return length;
}

const Curve3D Curve3D::operator+(const Point3D &rhs) const {
  Curve3D new_curve(*this);
  // Add p to new_curve

  Node *iter = new_curve.first;
  new_curve.point_n = point_n + 1;
  while (iter != NULL && (iter->next_iter != NULL)) 
    iter = iter->next_iter;
  if (iter != NULL)
    iter->next_iter = new Node(rhs);
  else
    new_curve.first = new Node(rhs);
  return new_curve;
}

Curve3D::Node::Node(Point3D _point) : Point3D(_point), next_iter(NULL) {
}

Curve3D::Node::Node() : Point3D(), next_iter(NULL) {
}

double Curve3D::Node::GetDistance(Node p1, Node p2) {
  return sqrt((p1.get_x() - p2.get_x()) * (p1.get_x() - p2.get_x()) + (p1.get_y() - p2.get_y()) * (p1.get_y() - p2.get_y()) + (p1.get_z() - p2.get_z()) * (p1.get_z() - p2.get_z()));
}
