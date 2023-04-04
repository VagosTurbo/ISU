%include "rw32-2022.inc"

section .data

section .text
factorial:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov eax, [ebp+8]
    mov ebx, 1
    mov ecx, 1
    mov edx, 0
    mov esi, 0
    mov edi, 0
    mov ebp, 0
    cmp eax, 0
    jle .L1
    mov ecx, eax
    mov ebx, 1
    mov edx, 0
    mov esi, 0
    mov edi, 0
    mov ebp, 0
.L2:
    mov eax, ebx
    mul ecx
    add eax, edx
    adc edx, esi
    adc esi, edi
    adc edi, ebp
    mov ebx, eax
    mov edx, edx
    mov esi, esi
    mov edi, edi
    mov ebp, ebp
    dec ecx
    cmp ecx, 0
    jne .L2
.L1:
    mov eax, ebx
    mov ebx, 1
    mov ecx, 1
    mov edx, 0
    mov esi, 0
    mov edi, 0
    mov ebp, 0
    pop ebp
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop ebp
    ret


CMAIN:
	push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    push esi
    push edi
    push ebp
    mov eax, 5
    call factorial
    mov ebx, eax
    mov eax, 0
    

   

	


	pop ebp
	ret
