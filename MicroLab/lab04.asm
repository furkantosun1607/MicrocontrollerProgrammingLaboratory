
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 



CMP N,15
JB displaymessage
CMP N,25
JA displaymessage 


mov Array[0],0
mov Array[1],1
mov SI,2
sub N,2
mov ch,0
mov cl,N



loop1:
inc SI
mov ax,SI
mov bl,2
mov dl,Array[SI-3]
mov dh,Array[SI-2]
div bl
cmp ah,0
je Even



Odd:
sub dh,dl  
mov array[SI-1],dh

loop loop1
jmp endlabel


Even:
add dh,dl
mov array[SI-1],dh

loop loop1  


jmp endlabel

displaymessage:
LEA SI,MES
MOV CX, 38
MOV AH, 0EH
charbychar:
LODSB
;MOV AL, [SI]
; INC SI
INT 10H
LOOP charbychar  


endlabel:

ret
 

N db 15

Array db N DUP(0)


                                
mes db 'Please enter a value 14 between 26', 0











