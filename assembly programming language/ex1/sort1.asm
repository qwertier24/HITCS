INCLUDE  ASM32.INC

MAXN=1000

.DATA
		V	DWORD	MAXN	DUP(?)
		N	DWORD	?
.CODE
	MAIN	PROC
			INVOKE	printf,chr$("请输入数组元素个数1~100：")
			MOV		EAX,OFFSET N
			INVOKE	scanf,chr$("%d"),EAX
			INVOKE	printf,chr$("请按顺序输入所有元素：",13,10)
			CMP		N,0
			JZ		N_ZERO
			MOV		ECX,N
			MOV		ESI,0
	L1:		PUSH	ECX
			LEA		EAX,V[ESI*4]
			INVOKE	scanf,chr$("%d"),EAX
			POP		ECX
			INC		ESI
			LOOP	L1
	
			CMP		N,1
			JZ		N_ONE

			MOV		ECX,N
			DEC		ECX
	L2:		PUSH	ECX
			MOV		ESI,0
	L3:		MOV		EAX,V[ESI*4]
			MOV		EDX,V[ESI*4+4]
			CMP		EAX,EDX
			JLE		LL
			MOV		V[ESI*4],EDX
			MOV		V[ESI*4+4],EAX
	LL:		INC		ESI
			LOOP	L3
			POP		ECX
			INC		ESI
			LOOP	L2

	N_ONE:	MOV		ECX,N
			MOV		ESI,0
	L4:		PUSH	ECX
			INVOKE	printf,chr$("%8d"),DWORD PTR V[ESI*4]
			POP		ECX
			INC		ESI
			LOOP	L4
	
	N_ZERO:	INVOKE	getchar
			INVOKE	getchar

			INVOKE	  ExitProcess,0 
	MAIN	ENDP											; 函数 - 子程序结束

			END       MAIN									; END 指示所有程序到此结束，第一条可执行语句位置为main

