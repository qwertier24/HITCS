/**
 * quicksort.java -- Quick Sort
 *
 * Written on 星期三, 20 七月 2016.
 */

import java.util.*;

public class quicksort {
  
  static void shuffleArray(int[] a)
  {
    /*
     * 该函数的作用是将a数组随机打乱
     */
    Random rnd = new Random();
    for (int i = a.length - 1; i > 0; i--)
    {
      int index = rnd.nextInt(i + 1);
      int tmp = a[index];
      a[index] = a[i];
      a[i] = tmp;
    }
  }
  
  static Random rnd = new Random();
  static int partition(int l, int r, int[] a) {
    
    // 在区间[l,r]中获得一个随机的位置p
    int p = l + rnd.nextInt(r-l);

    // 交换a[l]和a[p]
    int tmp = a[l];
    a[l] = a[p];
    a[p] = tmp;

    // 将a[l]设为基准（pivot）
    int x = a[l];
    
    while (l < r) {

      // 从右边找到第一个小于基准的元素，并将其插入到自由位置（l）中
      while (l < r && a[r] >= x)
        r--;
      if (l < r) {
        a[l] = a[r];
        l++;
      }

      // 从左边找到第一个大于等于基准的元素，并将其插入到自由位置（r）中
      while (l < r && a[l] < x)
        l++;
      if (l < r) {
        a[r] = a[l];
        r--;
      }
    }

    // 将基准元素重新插入到序列中
    a[l] = x;
    return l;
  }
  
  static void quickSort(int l, int r, int[] a) {
    if (l < r) {
      int mid = partition(l, r, a);
      
      // 递归排序左半部分
      quickSort(l, mid - 1, a);
      
      // 递归排序右半部分
      quickSort(mid + 1, r, a);  
    }
  }
  
  public static void main(String Args[]) {
    
    // 生成一个0..99999的随机排列
    int[] a= new int[100000];
    for (int i = 0; i < a.length; i++)
      a[i] = i;
    shuffleArray(a);

    // 进行快速排序
    quickSort(0, a.length-1, a);

    // 检查排序结果
    boolean flag = true;
    for (int i = 0; i < a.length - 1; i++) {
      if (a[i] != i) {
        System.out.println("ERROR");
        flag = false;
      }
    }
    if (flag)
      System.out.println("FINISHED");
  }
}
