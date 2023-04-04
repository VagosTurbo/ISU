%include "rw32-2022.inc"

;NASOBENIE

section .data

section .text
CMAIN:
	push ebp
	mov ebp,esp
	
	mov eax, 1
	cmp eax, 0
	jae hop1
	mov eax, 10

hop1:
	mov eax, 5

	pop ebp
	ret
