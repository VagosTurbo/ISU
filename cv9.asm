%include "rw32-2022.inc"

section .data

    b dd 10
    y dd 0

section .text

;odcitanie a rozne volanie funkcii

odecti_dcel:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    sub eax, [ebp+12]

    pop ebp
    ret

stdcall:
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    sub eax, [ebp+12]

    pop ebp
    ret 8

fastcall:
    push ebp
    mov ebp, esp

    mov eax, ecx
    sub eax, edx

    pop ebp
    ret

pascal:
    push ebp
    mov ebp, esp

    mov eax, [ebp+12]
    sub eax, [ebp+8]

    pop ebp
    ret

CMAIN:

    push ebp
    mov ebp, esp

    push dword [b]
    push dword 5
    call odecti_dcel
    add esp, 8
    mov [y], eax

    push dword [b]
    push dword 3
    call stdcall
    mov [y], eax


    mov ecx, [b]
    mov edx, 3
    call fastcall
    mov [y], eax

    push dword 5
    push dword [b]
    call pascal
    add esp, 8
    mov [y], eax


	pop ebp
	ret
