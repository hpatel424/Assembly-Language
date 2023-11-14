; Example assembly language program -- adds 158 to number in memory
; Author:  Harry Patel
; Date:    09/16/2021
comment & we can comment in this 
way to &

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data
number  DWORD   -105

mystring BYTE "MidTerm-2021;",0
sum     DWORD   ?

.CODE                   ; start of main program code
add2 PROC
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    add eax, [ebp+12]
    pop ebp
    ret
add2 ENDP

calc proc
push ebp
mov ebp, esp
push ebx
mov  eax, [ebp+8]
add eax, [ebp+12]
mov ebx, [ebp+8]
sub ebx, [ebp+12]
mul ebx
pop ebx 
pop ebp
ret
calc endp

main    PROC
        ;mov     eax, number     ; first number to EAX
        ;add     eax, 158        ; add 158
        ;mov     sum, eax        ; sum to memory
        
      call calc



        mov   eax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code
