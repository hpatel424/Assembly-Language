; Example assembly language program -- adds 158 to number in memory
; Author:  Harry Patel
; Date:    09/13/2021
comment & we can comment in this 
way to &

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data

prime   DWORD   2,3

.CODE                           ; start of main program code
main    PROC
        mov eax, 2      ;count = 2
        mov ebx, 5      ; candidate = 5
        Bigloop:
        cmp eax, 100
        jg L2
        mov ecx, 1      ; index = 1
        lea esi, prime
        whileloop:
        push eax
        cmp ecx, eax
        jg L3
        mov edx, 0
        
        mov eax, [esi]
        add esi, 4
        div ebx
       
        pop eax
        cmp edx,0
        je L4
        add ecx, 1
        jmp whileloop
        L4:
        L3:
        cmp ecx, eax
        jle L5
        add prime [eax*4], ebx
        add eax, 1
        L5:
        add ebx, 2
        jmp Bigloop
        L2:
        mov   eax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code