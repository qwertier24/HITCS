#include <stdio.h>
#include <conio.h>
#include <string.h>

// 外部变量与过程声明
extern "C" int n;
extern "C" int qi(char *buf, int *pi, char chr);
extern "C" int qo(char *buf, int *po, char *chr);
extern "C" int qp(char *buf, int pi, int po);

extern "C" {
  /*
    声明为外部提供的变量与过程
   */
    void incp(int *p);
    int QUEUE_SIZE = 16;
}

void incp(int *p) {
    (*p)++;
    if (*p == QUEUE_SIZE)
        *p = 0;
}

char buf[16];
int po, pi;
int main() {
    printf("请选择：ESC         退出；\n");
    printf("        -           从队列提取元素显示\n");
    printf("        +           打印当前队列\n");
    printf("        [0-9A-Z]    打印当前队列\n");
    printf("其他抛弃\n");
    while (true) {
        char chr = _getche();
        if (chr == '-') {
            char chr_out;
            int status = qo(buf, &po, &chr_out);
            if (status == 0) {
                printf("\n队列已空\n");
            } else {
                printf("提取的元素为:%c\n", chr_out);
            }
        } else if (chr == '+') {
            int status = qp(buf, pi, po);
        } else if (('0' <= chr && chr <= '9') || ('A' <= chr && chr <= 'Z')) {
            int status = qi(buf, &pi, chr);
            if (status == 0) {
                printf("\n队列已满\n");
            }
        } else if (chr == 27) {
            break;
        }
    }
    return 0;
}
