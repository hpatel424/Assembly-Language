; Example assembly language program -- adds 158 to number in memory
; Author:  Harry Patel
; Date:    09/16/2021
comment & we can comment in this 
way to &

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data
;dval dword   -1
;dval dword -100
;bval byte -10
;tval dword -1


.CODE                           ; start of main program code
main    PROC
        
        ;mov ah, 0
        ;mov   eax, 100            ; exit with return code 0 
        ;mov edx,dval
        ;mov dval, ecx
        ;mov ebx,128
        ;mov cl, bval
        ;xchg tval, eax
        ;xchg dl, dh
        ;xchg eax, edx
        ;xchg bx, dx
         ret    
main    ENDP

END                             ; end of source code 