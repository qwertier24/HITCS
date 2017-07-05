.686P
.MODEL flat, STDCALL
.STACK 4096
option casemap : none;  大小写敏感

includelib "msvcrt.lib"
ExitProcess  PROTO   : DWORD
printf		 PROTO C : DWORD, : VARARG; C函数的声明
scanf		 PROTO C : DWORD, : VARARG
getchar		 PROTO C
_getche      PROTO C
_getch       PROTO C
putchar      PROTO C : BYTE

chr$ MACRO any_text : VARARG; 目前先用, 宏时讲
	LOCAL txtname
	.DATA
	txtname db any_text, 0
	ALIGN 4
	.code
	EXITM <OFFSET txtname>
ENDM

.data


P=1
PP=1
FIB QWORD P
QWORD PP
X=0
I=3
WHILE I LT 100
    X=P+PP
    PP=P
    P=X
    QWORD X
    ECHO X
    I=I+1
ENDM

.code
    main    proc
        INVOKE  printf, chr$("%llu "), QWORD PTR FIB[99*8]
        INVOKE  _getch
        INVOKE  ExitProcess, 0
	main    endp
    end     main