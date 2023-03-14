%include "rw32-2022.inc"

section .data

    a db 7
    b dd 2
    c dw 5
    d dw 4
    e dw 3
    q dd 0
    r dd 0

section .text
CMAIN:
	push ebp
	mov ebp,esp

    mov eax, 0xa4a3a2a1

;4321 -> 4132

    rol eax, 8
    rol ax, 8
    rol eax, 16

;q = (a * b + c + 38)/(13*d+e+118)
;r = (a * b + c + 38)%(13*d+e+118)

    movzx eax, byte [a]
    mov ebx, dword [b]
    mul ebx
    movzx ebx, word [c]
    add eax, ebx
    adc edx, 0
    add eax, 38
    mov ecx, eax

    mov eax, 13
    movzx ebx, word [d]
    mul ebx
    movzx ebx, word [e]
    add eax, ebx
    adc edx, 0
    add eax, 118
    adc edx, 0

    mov ebx, eax
    mov eax, ecx

    div ebx
    mov [q], eax
    mov [r], edx

	pop ebp
	ret
