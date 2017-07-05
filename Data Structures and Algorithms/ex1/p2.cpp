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
  void erase(int _p) {
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

List *add(List *poly1, List *poly2) {
  List *res = new List();
  Node *head1 = poly1->head, *head2 = poly2->head, **pNxt = &(res->head);
  while (head1 != NULL || head2 != NULL) {
    if (head2 == NULL || (head1 != NULL && head2 != NULL && head1->p < head2->p)) {
      *pNxt = new Node(head1->p, head1->v);
      head1 = head1->nxt;
    } else if (head1 != NULL && head2 != NULL && head1->p == head2->p) {
      if (head1->v + head2->v)
        *pNxt = new Node(head1->p, head1->v + head2->v);
      head1 = head1->nxt;
      head2 = head2->nxt;
    } else {
      *pNxt = new Node(head2->p, head2->v);
      head2 = head2->nxt;
    }
    if (*pNxt != NULL)
      pNxt = &((*pNxt)->nxt);
  }
  return res;
}

int main(){
  int T;
  scanf("%d", &T);
  while (T--) {
    int v, p;
    List *poly1 = new List(), *poly2 = new List();
    while (scanf("%d%d", &v, &p) && p >= 0) {
      poly1->insert(p, v);
    }
    while (scanf("%d%d", &v, &p) && p >= 0) {
      poly2->insert(p, v);
    }
    List *res = add(poly1, poly2);
    res->reverse();
    Node *cur = res->head;
    while (cur != NULL) {
      printf("[%d %d] ", cur->v, cur->p);
      cur = cur->nxt;
    }
    puts("");
    delete res;
    delete poly1;
    delete poly2;
  }
  return 0;
}
