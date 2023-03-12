%include "rw32-2022.inc"

;NASOBENIE

section .data
	x dd 0x12345678
    z db "AHOJ"
    klic dd 1001

    a dd 5
    b db 0

    p db 12
    r db 14
    s dw 0
    k db 50

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
    shl eax, 2
    add eax, [a]

    ;s = p + r
    mov al, [p]
    mov bl, [r]
    add al,bl
    adc ah, 0

    mov dx, 0
    mov dl, ah

    
    mov bl, [k]
    shl bl, dl

    add al,cl



	

	; zde muzete psat vas kod

	pop ebp
	ret
