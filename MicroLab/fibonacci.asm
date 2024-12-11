
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MOV CX, 0000H
SUB N,2
MOV CL, N
MOV AL, 1
MOV BL, 1
MOV ARRAY[0], 1
MOV ARRAY[1], 1
MOV SI, 2

FIBO:
ADD AL,BL
MOV ARRAY[SI],AL
MOV BL, ARRAY[SI-1]
INC SI
LOOP FIBO



ret


N db 15

ARRAY N DUP(0)







