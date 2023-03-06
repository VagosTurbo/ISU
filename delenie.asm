%include "rw32-2022.inc"

;NASOBENIE

section .data
	x dw -300
	y dw 2
	z dw 0

section .text
CMAIN:
	push ebp
	mov ebp,esp

    ;z = (x * x + 80 * y) / (5500 * y - 15)

    ;bezznamenkove delenie

    ;mov dx, 0
    ;mov ax, [x]
    ;div word[y]

    ;znamekove delenie

    ;mov ax, [x]
    ;cwd
    ;idiv word[y]

    ;cbw - convert byte to word
    ;cwd - convert word to double word
    ;cdq - convert double word to quad word

    movsx eax,word[x]
	imul eax
    mov ebx, eax
    
    movzx eax,word[y]
    imul eax,80
    add ebx,eax
    mov [z],ebx
    
    movzx eax,word[y]
    imul eax,5500
    sub eax,15
    mov ebx,eax

    mov eax, [z]
    cdq
    idiv ebx
    mov [z], ebx

	pop ebp
	ret
