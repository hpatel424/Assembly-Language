; Example assembly language program -- adds 158 to number in memory
; Author:   Harry Patel
; Date:    09/21/2021
comment & we can comment in this 
way to &



.DATA                   ; reserve storage for data
number  QWORD   -105
sum     QWORD   ?

.CODE                           ; start of main program code
main    PROC
        mov     rax, number     ; first number to RAX
        add     rax, 158        ; add 158
        mov     sum, rax        ; sum to memory

        mov   rax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code