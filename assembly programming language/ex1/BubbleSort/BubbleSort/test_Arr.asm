INCLUDE  ASM32.INC

MAXN=1000

.DATA
		V	DWORD	MAXN	DUP(?)
		N	DWORD	?
.CODE
	MAIN	PROC
			MOV		ESI,0
			MOV		EBX,0
			MOV		EAX,V[ESI*4+4]
			MOV		EAX,V[ESI*4]
			MOV		EAX,V[4]
			LEA		EAX,V
			INVOKE	getchar
			INVOKE	ExitProcess,0 
	MAIN	ENDP											; 函数 - 子程序结束

			END		MAIN									; END 指示所有程序到此结束，第一条可执行语句位置为main

