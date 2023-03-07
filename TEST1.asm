%include "rw32-2022.inc"

;NASOBENIE

section .data
	x1 dw aa
	x2 dw bb
	x3 dw cc
    x4 dw dd
section .text
CMAIN:
	push ebp
	mov ebp,esp

    mov eax, [x1]
    mov eax


	pop ebp
	ret
