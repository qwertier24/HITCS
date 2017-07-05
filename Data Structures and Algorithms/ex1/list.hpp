#include<stdio.h>

struct Node {
  Node *nxt;
  int p, v;
  Node(int _p, int _v, Node *_nxt = NULL) :
      nxt(_nxt),
      p(_p),
      v(_v) {
  }
};

struct List {
  Node *head;
  int len;
  List() :
      head(NULL),
      len(0) {
  }
  ~List() {
    Node *cur = head;
    while (cur != NULL) {
      Node *nxt = cur->nxt;
      delete cur;
      cur = nxt;
    }
  }
  Node *find(int p) {
    /*
      Return the point of the node whose power is p
    */
    Node *cur = head;
    while (cur != NULL) {
      if (cur->p == p)
        return cur;
      cur = cur -> nxt;
    }
    return NULL;
  }
  void insert(int _p, int _v = 1) {
    Node *cur = head, *lst = NULL;
    while (cur != NULL) {
      if (cur->p > _p) {
        if (lst == NULL) {
          head = new Node(_p, _v, cur);
        } else {
          lst->nxt = new Node(_p, _v, cur);
        }
        len++;
        return;
      }
      lst = cur;
      cur = cur->nxt;
    }
    if (lst == NULL)
      head = new Node(_p, _v);
    else
      lst->nxt = new Node(_p, _v);
  }
  ·void erase(int _p) {
    Node *cur = head, *lst = NULL;
    while (cur != NULL) {
      if (cur->p == _p) {
        len--;
        if (lst == NULL) {
          head = cur->nxt;
        } else {
          lst->nxt = cur->nxt;
          delete cur;
        }
        return;
      }
      lst = cur;
      cur = cur->nxt;
    }
  }
  int getLen() {
    return len;
  }
  void print() {
    Node *cur = head;
    while (cur != NULL) {
      printf("%d ", cur->p);
      cur = cur->nxt;
    }
    puts("");
  }
  void reverse() {
    Node *cur = head, *lst = NULL;
    while (cur != NULL) {
      Node *nxt = cur->nxt;
      cur->nxt = lst;
      lst = cur;
      cur = nxt;
    }
    head = lst;
  }
};
