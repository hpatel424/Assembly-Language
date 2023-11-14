; Example assembly language program -- String Operation
; Author: Harry Patel
; Date:    11/2/2021

.586
.MODEL FLAT

INCLUDE io.h            ; header file for input/output

.STACK 4096

.DATA
outLbl byte "The modified string is", 0
string byte  "ABCDEFGHIJ", 0


.CODE

_MainProc1 PROC




;setup code 4
       lea esi, string+9       ;end of string
       lea edi, string+7        ; address of 'H'
       std                     ; backward movement set direction flag=1
      

       movsb                ; move 4 characters 
       movsb
       movsb
       movsb
       output outLbl, string    ;display modified string

       
        mov     eax, 0  ; exit with return code 0
        ret
_MainProc1 ENDP
END                             ; end of source code

; setup code 1
       lea esi, string      ; beginning of string
       lea edi, string+5    ; address of 'F'
       cld                  ; Forward movement

; setup code 2
       lea esi, string      ; beginning of string
       lea edi, string+2    ; address of 'c'
       cld                  ; forward movement by setting direction flag to 0

; setup code 3
        lea esi, string+9       ; beginning of string
        lea edi, string+4       ; address of 'E'
