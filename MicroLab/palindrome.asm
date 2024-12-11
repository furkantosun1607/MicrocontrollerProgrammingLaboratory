
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

;print etmek 
lea dx,msg1
mov ah,09h
int 21h  

lea si, str1
lea di, str1  ; di kelimenin basindan sonuna kadar ilerletcez

string_decider:

mov al, '$'  ; for comparison
cmp al,[di]
je pal_finder
inc di
jmp string_decider 










pal_finder:
dec di  
mov al,[si]
inc si
cmp al,[di]
jne not_pal
cmp si,di
jle pal_finder   




pal:
lea dx,msg3
mov ah,09h
int 21h
jmp world_ender 

not_pal:
lea dx,msg2
mov ah,09h
int 21h 
        
world_ender:        


ret

msg1 db 10,'please enter a word$'
msg2 db 10,13,'Not a Palindrome :( $'  
msg3 db 10,13,' yeeey palindrome $' ;13 satir basi 10 yeni satir
str1 db 'racecar$'


