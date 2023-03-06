%include "rw32-2022.inc"

;NASOBENIE

section .data
	x dw -20000
	y dw 100
	z dd 0

section .text
CMAIN:
	push ebp
	mov ebp,esp

    ;z = x * x + 80 * y
    
    movsx eax,word[x]
	imul eax
    mov ebx, eax
    
    movzx eax,word[y]
    imul eax,80
    add ebx,eax
    mov [z],ebx


	pop ebp
	ret
