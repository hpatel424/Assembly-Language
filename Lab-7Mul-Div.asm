; Example assembly language program -- adds 158 to number in memory
; Author:  Harry Patel
; Date:    09/13/2021
comment & we can comment in this 
way to &

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data
;value dword 0FFFFFF3AH
count byte 0FCH

.CODE                           ; start of main program code
main    PROC
        
        mov ax, 0FF75H
        idiv count
        
        ret
main    ENDP

END                             ; end of source code