#include<stdio.h>

class Queue {
 private:
  int q[1000000], pFront, pRear;
 public:
  Queue() {
    /*
      队列初始化
    */
    pFront = pRear = 0;
  }
  int front() {
    /*
      返回队首元素
    */
    return q[pFront];
  }
  void pop() {
    /*
      队首元素出队
    */
    pFront++;
  }
  void push(int x) {
    /*
      x元素进队
    */
    q[pRear++] = x;
  }
  bool empty() {
    /*
      判断队列是否为空，空返回true，否则返回false
    */
    return pFront == pRear;
  }
};

int main(){
  int T;
  scanf("%d", &T);
  for (int kase = 1; kase <= T; kase++) {
    int n, k;
    scanf("%d%d", &n, &k);  // 有n个人，每回合第k人被移除
    Queue *pQ = new Queue();
    for (int i = 1; i <= n; i++) {
      pQ->push(i);
    }
    int res;  // 记录答案的变量
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= (k - 1) % (n - i + 1); j++) {  // 还剩下n-i+1个人，所以只需循环(k-1)%(n-i+1)次
        pQ->push(pQ->front());  // 将队首元素移到队尾
        pQ->pop();              // 队首元素出队
      }
      if (i == n)
        res = pQ->front();
      pQ->pop();  // 将第k人移出队
    }
    delete pQ;
    printf("Case %d: %d\n", kase, res);
  }
  return 0;
}
/*
输入样例：
10
2 1
2 2
3 1
3 2
3 3
4 6
5 3
1000 1
7 4
5 2
*/
