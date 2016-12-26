.386
.MODEL flat, STDCALL
.STACK 4096
option casemap : none;  大小写敏感

includelib "msvcrt.lib"

PUBLIC C qi, qo, qp, n
extern C QUEUE_SIZE:DWORD

ExitProcess PROTO   : DWORD
printf		PROTO C : DWORD, : VARARG; C函数的声明
scanf		PROTO C : DWORD, : VARARG
getchar		PROTO C
_getche     PROTO C
_getch      PROTO C
putchar     PROTO C : BYTE
incp        PROTO C : PTR DWORD
qi          PROTO C : PTR BYTE, : PTR DWORD, : BYTE
qo          PROTO C : PTR BYTE, : PTR DWORD, : PTR BYTE
qp          PROTO C : PTR BYTE, : DWORD, : DWORD

chr$ MACRO any_text : VARARG; 目前先用, 宏时讲
	LOCAL txtname
	.DATA
	txtname db any_text, 0
	ALIGN 4
	.code
	EXITM <OFFSET txtname>
ENDM

.data
    x   DB      "afsiajfoiasjfijasdfoasdjfjis"
    n   dword   0
    chr byte    0
.code
    qi  PROC C USES ebx esi edi ecx, 
        pbuf:PTR BYTE, 
        ppi:PTR DWORD, 
        ichr:BYTE
        mov     ecx, QUEUE_SIZE
        cmp     n, ecx
        jne     L2              ; if not full
        mov     eax, 0
        ret
    L2: ;;      push the register this procedure uses

        mov     ebx, pbuf       ; &buf
        mov     esi, ppi        ; &pi
        mov     edi, [esi]      ; pi
        mov     cl, ichr       ; chr
        push    ecx
        push    edx
        push    eax
        invoke  incp, esi
        pop     eax
        pop     edx
        pop     ecx
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
        push    ecx
        push    edx
        push    eax
        invoke  incp, esi
        pop     eax
        pop     edx
        pop     ecx
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
	
    end