%include "rw32-2022.inc"

section .data

    a db 7
    b dd -2
    c dw -5
    d dw -4
    e dw -3
    q dd 0
    r dd 0

section .text
CMAIN:
	push ebp
	mov ebp,esp

;4321 -> 1342

    mov eax, 0xa4a3a2a1

    rol eax, 16
    rol ax, 8
    rol eax, 8


;druha uloha

;q = (a * b + c -38)/(13*d+e-108)
;r = (a * b + c -38)%(13*d+e-108)
    mov eax, 0
    movsx eax, byte [a]
    mov ebx, dword [b]
    imul ebx
    movsx ebx, word [c]
    add eax, ebx
    adc edx, 0
    sub eax, 38
    mov ecx, eax

    mov eax, 13
    movsx ebx, word [d]
    imul ebx
    movsx ebx, word [e]
    add eax, ebx
    adc edx, 0
    sub eax, 108

    mov ebx, eax
    mov eax, ecx

    div ebx
    mov [q], eax
    mov [r], edx




	pop ebp
	ret
