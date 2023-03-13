%include "rw32-2022.inc"

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

;4321 -> 1342

    mov eax, 0xa4a3a2a1

    rol eax, 16
    rol ax, 8
    rol eax, 8

;    rol ax, 8
;    rol eax, 8
;    rol ax, 8
;    rol eax, 16
;    rol ax, 8
;    rol eax, 16



	pop ebp
	ret
