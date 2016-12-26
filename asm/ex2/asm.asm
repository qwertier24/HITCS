.386
.MODEL flat, STDCALL
.STACK 4096
option casemap : none;  大小写敏感

includelib "e:\hlbc\Documents\vs2015\ASM\lib\msvcrt.lib"

; 为外部提供的东东在这儿声明
public C vasm, aaaa, fasm
; 外部的变量在这儿声明
extern C vc : ptr BYTE, cccc : DWORD

; 函数不论内外都在这儿声明
printf	PROTO C : ptr byte, : vararg
fc		PROTO C : ptr BYTE, :DWORD
fasm 	PROTO C : ptr BYTE, :DWORD

chr$ MACRO any_text : vararg
	LOCAL textname
	.const
		textname db any_text, 0
	ALIGN 4
	.code
		EXITM <OFFSET textname>
ENDM

.data
vasm	DWORD offset casm				;！！！！！为外部提供的数组要这么声明！！！！！
casm	BYTE  "汇编的变量欢迎你！"      ;!!!casm作为共享变量传出去是其内容，而不是地址!!!
aaaa    DWORD 0aaaah
.code
fasm	proc C uses ebx, s:ptr BYTE,d:DWORD
		invoke printf,chr$(0dh,0ah,"====现在执行的是汇编语言程序====",0dh,0ah)
		invoke printf,chr$("    显示外部C变量的内容：	%s	%04X ",0dh,0ah),vc,cccc
		invoke printf,chr$("    显示参数的内容：	%s	%04X ",0dh,0ah),s,d
		invoke printf,chr$("    !汇编中开始调用C的函数!",0dh,0ah)
		invoke fc,s,d
		invoke printf,chr$("====汇编语言程序现在执行完毕====", 0dh, 0ah, 0dh, 0ah)
		ret
fasm	endp
		END