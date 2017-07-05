.386						; 指定最低兼容的CPU
.MODEL        FLAT, STDCALL	; 指定存储模式，函数调用缺省规范
.STACK        1024			; 定义堆栈段，指定段大小，缺省4K
INCLUDELIB	"MSVCRT.LIB"; 连接C函数库
ExitProcess  PROTO    :DWORD
printf		 PROTO C : DWORD, : VARARG; C函数的声明
scanf		 PROTO C : DWORD, : VARARG
getchar		 PROTO C

chr$ MACRO any_text : VARARG; 目前先用, 宏时讲
	LOCAL txtname
	.DATA
	txtname db any_text, 0
	ALIGN 4
	.code
	EXITM <OFFSET txtname>
ENDM


