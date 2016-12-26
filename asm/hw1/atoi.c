#include <stdio.h>

int atoi(char *s) {
  int ret = 0, nega = 0;
  if (*s == '-') {  /* When i is negative */
    nega = 1;
    s++;
  }
  while (*s)
    ret = ret * 10 + *s++ - '0';
  if (nega)
    ret *= -1;
  return ret;
}

int itoa(int i, char *s) {
  int len = 0, k = 0, nega = 0;
  long long j = i;  /* Change i to long long in case i = -2147483648 */
  if (j < 0) {  /* When j is negative */
    j *= -1;
    nega = 1;
  }
  if (j == 0) {
    s[len++] = '0';
  } else {
    while (j > 0) {
      s[len++] = j % 10 + '0';
      j /= 10;
    }
  }
  if (nega) {
    s[len++] = '-';
  }
  
  s[len] = 0;  /* End of the string */

  for (k = 0; k < len / 2; k++) {
    char tmp = s[k];
    s[k] = s[len - k - 1];
    s[len - k - 1] = tmp;
  }

  return len;
}

int main() {
  char *s = "-1234567890", t[100];
  printf("%d\n", itoa(atoi(s), t));
  printf("t:%s", t);
  return 0;
}
