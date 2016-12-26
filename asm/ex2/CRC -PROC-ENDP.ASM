INCLUDE  ASM32.INC

COUNT=100
.DATA												; 数据段定义，全局变量在这儿
		S	BYTE    COUNT DUP(?)
	CRCS	BYTE	0,0,0

.CODE		
	SRCL	PROC
			PUSH	EBP
			MOV		EBP,ESP
			PUSH	EBX
			PUSH	ECX
			PUSH	ESI

			MOV		EBX,[EBP+8]
			MOV		ECX,[EBP+12]
			MOV		ESI,ECX
			DEC		ESI
			CLC
	L:		RCL		BYTE PTR [EBX+ESI],1
			DEC		ESI
			LOOP	L

			POP		ESI
			POP		ECX
			POP		EBX
			POP		EBP
			RET
	SRCL	ENDP

		
	CRC		PROC
			PUSH	EBP
			MOV		EBP,ESP
			ADD		ESP,-204
			PUSH	EBX
			PUSH	ECX
			PUSH	ESI
			PUSH	EDI

			MOV		ESI,[EBP+8]
			LEA		EDI,[EBP-200]
			MOV		ECX,[EBP+12]
			CLD
			REP		MOVSB
			MOV		WORD PTR [EDI],0
			MOV		BYTE PTR [EDI+2],0

			MOV		ECX,[EBP+12]
			ADD		ECX,2
			MOV		[EBP-204],ECX

			LEA		EBX,[EBP-200]
			MOV		ECX,[EBP+12]
			SHL		ECX,3
		LL: TEST	BYTE PTR [EBX],80H
			JZ		LOV
			XOR		BYTE PTR [EBX],80H
			XOR		BYTE PTR [EBX+1],05H
		LOV:PUSH	[EBP-204]
			PUSH	EBX
			CALL	SRCL
			ADD		ESP,8
			LOOP	LL

			MOV		ESI,[EBP+16]
			MOV		CX,[EBX]
			MOV		[ESI],CX

			POP		EDI
			POP		ESI
			POP		ECX
			POP		EBX
			LEAVE
			RET
	CRC		ENDP
										; 代码段开始
	MAIN	PROC									; 函数 - 子程序开始
			INVOKE	printf, chr$("请输入1个字符串：")
			INVOKE	scanf,chr$("%s"),OFFSET S
			INVOKE	getchar
			INVOKE	strlen,OFFSET S
			
			PUSH	OFFSET CRCS
			PUSH	EAX
			PUSH	OFFSET	S
			CALL	CRC
			ADD		ESP,12


        ;把CF位加到最后一个元素的最低位，实现整串循环左移
			MOV		CX,WORD PTR CRCS
			MOV		WORD PTR S[EAX],CX
			MOV		BYTE PTR S[EAX+2],0

			INVOKE	printf, chr$("CRC:%02X %02X",0dh,0ah),CRCS[0],CRCS[1]

			INVOKE	getchar
			INVOKE	 ExitProcess,0 
	MAIN	ENDP											; 函数 - 子程序结束

			END       MAIN									; END 指示所有程序到此结束，第一条可执行语句位置为main
