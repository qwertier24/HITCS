.586
.MODEL flat, STDCALL
.STACK 4096
option casemap : none;  大小写敏感

includelib "msvcrt.lib"
ExitProcess  PROTO : DWORD
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

QUEUE_SIZE = 16

incp    PROTO C, p:PTR DWORD
qi      PROTO C, pbuf:PTR BYTE, ppi:PTR DWORD, ichr:BYTE
qo      PROTO C, pbuf:PTR BYTE, ppo:PTR DWORD, pchr:PTR BYTE
qp      PROTO C, pbuf:PTR BYTE, vpi:DWORD, vpo:DWORD

.data
    buf byte    QUEUE_SIZE  dup(?)
    pi  dword   0
    po  dword   0
    n   dword   0
    chr byte    0
.code
    incp PROC C USES ebx eax,
        p:PTR DWORD 
        mov     ebx, p
        mov     eax, [ebx]
        inc     eax
        cmp     eax, QUEUE_SIZE
        jne     L1
        mov     eax, 0
    L1: 
        mov     [ebx], eax
        ret
    incp    endp

    qi  PROC C USES ebx esi edi ecx,
        pbuf:PTR BYTE, 
        ppi:PTR DWORD, 
        ichr:BYTE
        cmp     n, QUEUE_SIZE
        jne     L2              ; if not full
        mov     eax, 0
        ret
    L2: ;;      push the register this procedure uses

        inc     [ppi]
        mov     ebx, pbuf       ; &buf
        mov     esi, ppi        ; &pi
        mov     edi, [esi]      ; pi
        mov     cl, ichr       ; chr
        invoke  incp, esi
        mov     [ebx+edi], cl

        inc     n
        mov     eax, 1
        ret
	qi  endp

	qo  PROC C USES ebx esi edi ecx, 
        pbuf:PTR BYTE, 
        ppo:PTR DWORD, 
        pchr:PTR BYTE
        cmp     n, 0
        jne     L3              ; if not empty
        mov     eax, 0
        ret
    L3: ;;      push the register this procedure uses

        mov     ebx, pbuf       ; &buf
        mov     esi, ppo        ; &po
        mov     edi, [esi]      ; po
        invoke  incp, esi
        mov     esi, pchr       ; &chr
        mov     cl, [ebx+edi]   ; output buf[po]
        mov     [esi], cl

        dec     n
        mov     eax, 1
        ret
	qo  endp
    
    qp  PROC C USES ebx esi edi edx ecx, 
        pbuf:PTR BYTE, 
        vpi:DWORD, 
        vpo:DWORD
        invoke  printf, chr$(13,10,"当前队列内容为： ")

        mov     ebx, pbuf       ; &buf
        mov     esi, vpo         ; po
        mov     edi, vpi         ; pi

        cmp     n, 0
        je      LZ
        mov     ecx, n
    L8: push    ecx
        INVOKE  putchar, [ebx+esi]
        pop     ecx
        inc     esi
        cmp     esi, QUEUE_SIZE
        jne     L9
        mov     esi, 0
    L9: loop    L8
    LZ: INVOKE  printf, chr$(",  队首下标为: %d, 队尾下标为: %d, 元素个数为: %d",13,10), vpo, vpi, n
        mov     eax, n
        ret
    qp  endp
	
	main    proc
        INVOKE  printf, chr$("请选择：ESC         退出；",13,10)
        INVOKE  printf, chr$("        -           从队列提取元素显示",13,10)
        INVOKE  printf, chr$("        +           打印当前队列",13,10)
        INVOKE  printf, chr$("        [0-9A-Z]    打印当前队列",13,10)
        INVOKE  printf, chr$("其他抛弃",13,10)
    L4: INVOKE  _getche
        cmp     al, 27
        je      LQ              ; quit
        cmp     al, 43
        je      LP              ; print all elements
        cmp     al, 45
        je      LO              ; output front element
        cmp     al, 65
        jae     LA
        cmp     al, 48
        jae     LD
        jmp     L4
    LP: INVOKE  qp, ADDR buf, pi, po
        jmp     L4
    LO: INVOKE  qo, ADDR buf, ADDR po, ADDR chr
        cmp     eax, 1
        je      L5
        jne     L6
    L5: INVOKE  printf, chr$(13,10,"提取的元素为:%c",13,10), chr
        jmp     L4
    L6: INVOKE  printf, chr$(13,10,"队列已空!",13,10)
        jmp     L4
    LA: cmp     al, 90
        jle     LI
        jmp     L4
    LD: cmp     al, 57
        jle     LI
        jmp     L4
    LI: INVOKE  qi, ADDR buf, ADDR pi, al
        cmp     eax, 1
        je      L7
        INVOKE  printf, chr$(13,10,"队列已满",13,10)
    L7: jmp     L4
    LQ: INVOKE  ExitProcess, 0
	main    endp
    end     main