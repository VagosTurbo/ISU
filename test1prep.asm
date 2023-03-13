%include "rw32-2022.inc"

;NASOBENIE

section .data

    a db 1
    b dd 2
    c dw 3
    d dw 4
    e dw 5
    q dd 0
    r dd 0

section .text
CMAIN:
	push ebp
	mov ebp,esp

;4321 -> 3142
    mov eax, 0xa4a3a2a1

    rol ax, 8
    rol eax, 8
    rol ax, 8

;druha uloha
    mov al, [a]
    cbw
    cwde
    mov ebx, [b]
    mul ebx
    mov bx, [c]
    cwde
    add eax, ebx
    add eax, 24
    mov ebx, eax

    mov ax, [d]
    cwde
    mov cx, 9
    mul cx
    add eax, [e]
    add eax, 124

    mov ecx, eax
    mov eax, ebx
    mov ebx, ecx

    div ebx
    mov [q], eax
    mov [r], edx

	pop ebp
	ret
