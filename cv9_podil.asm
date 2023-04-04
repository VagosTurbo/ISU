%include "rw32-2022.inc"

section .data

    a dd 10
    podil dd 0
    zbytek dd 0

section .text

deleni_stdcall:
    push ebp
    mov ebp, esp
    sub esp, 4

    mov eax, [ebp+4]   ;prvy param
    cdq
    idiv dword [ebp+12]
    mov [ebp-4], eax    ;presun podielu do zasobniku

    mov eax, [ebp+16] 
    mov [eax], edx
    mov eax, [ebp-4]

    mov esp, ebp
    pop ebp
    ret 12


CMAIN:
    push ebp
    mov ebp, esp

    push zbytek
    push dword 3
    push dword [a]
    call deleni_stdcall
    mov [podil], eax


	pop ebp
	ret
