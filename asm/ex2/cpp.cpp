#include <stdio.h>
#include <conio.h>
#include <string.h>

//调用外部程序的东东在这儿声明
extern "C" char *vasm;			//传过来的数组必须是地址，而不是数组的内容
extern "C" int  aaaa;
extern "C" int  fasm(char *a,int d);

//为外部程序提供的东东在这儿声明
extern  "C"
{
	char *vc="C的变量欢迎你";
	int  cccc = 0xcccc;
	void fc(char *s,int d);
}

void fc(char *s,int d)
{
	printf("====现在是C语言的代码在执行====\n");
	printf("    显示参数的内容：	%s	%04X \n",s,d);
	printf("==== C 语言程序现在执行完毕====\n");
}

int main()
{
	fc(vc, cccc);
	fc(vasm,aaaa);
	fasm(vasm,aaaa);
	fasm(vc,cccc);
	getchar();
	return    0;
}