%include "rw32-2022.inc"

;NASOBENIE

section .data
	x dw 20
	y dw 100
	z dd 0

section .text
CMAIN:
	push ebp
	mov ebp,esp
	
	; z = x * y
	mov ax,[x]
	mul word [y]
	mov [z],ax

	mov ax,[x]
	mul word [y]
	mov [z],ax
	mov [z+2],dx

	mov eax,0
	mov ax,[x]
	sub ebx,ebx
	mov bx,[y]
	mul ebx
	mov [z],eax

	

	; zde muzete psat vas kod

	pop ebp
	ret
