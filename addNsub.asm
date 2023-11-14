; Example assembly language program -- adds 158 to number in memory
; Author:  sai hemanth thota
; Date:    09/13/2021
comment & we can comment in this 
way to &

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data

;wordOp word 10

.CODE                           ; start of main program code
main    PROC
     
    ;mov ebx, 4294967295
    ;neg ebx

    ;mov eax, 1
    ;dec eax
    
    ;mov cx, 3377
    ;inc cx
    
    
    ;mov ebx, 6357298
    ;mov ecx, 4280618869
    ;sub ebx, ecx
    
    
      ;mov ebx, 4279105909
      ;mov ecx, 29401490
      ;add ebx, ecx
      
      
      ;add dx, wordOp
       ;sub bl, dh
       ;inc ecx
       ;dec cl
       ;neg ebx

        mov   eax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code