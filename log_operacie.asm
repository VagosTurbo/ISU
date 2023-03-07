%include "rw32-2022.inc"

;NASOBENIE

section .data
	x dd 0x12345678
    z db "AHOJ"
    klic dd 1001

    a dd 5
    b db 0


section .text
CMAIN:
	push ebp
	mov ebp,esp
	
    mov eax , [x]
	and byte eax, 0x10305678
    or byte eax, 0x0a0a0000

    mov al, [klic]
    xor byte [z], al
    xor byte [z+1], al
    xor byte [z+2], al
    xor byte [z+3], al

    xor byte [z], al
    xor byte [z+1], al
    xor byte [z+2], al
    xor byte [z+3], al

    ;a = 3*b
    mov eax, [a]
    shl eax, 1
    add eax, [a]


	

	; zde muzete psat vas kod

	pop ebp
	ret
