#include<stdio.h>
int main(int argc, char *argv[])
{
    for (int i = 0; i < argc; i++)
    {
        printf("第%0d个参数为：%s\n", i, argv[i]);
    }
    getchar();
    return argc++;
}