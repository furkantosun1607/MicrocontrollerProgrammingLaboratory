
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MOV CX, 100
MOV SI,0

LOOP1:
MOV DL,ARR2[SI]
ADD DL, ARR1[SI]
MOV ARR2[SI], DL
INC SI
LOOP LOOP1




ret
    
ARR1 db 100 DUP(1)
ARR2 db 100 DUP(2)    



