org 100h 
#start=Emulation_Kit.exe#
$:

mov ah,2ch 
int 21h
mov bx,dx        

; for hours first digit
mov ax,0
mov al,ch
mov bl,10
div bl
mov ah,0
mov si,ax
mov al,numbers[si]
mov dx,2030h
out dx,al

; for hours second digit 

mov ax,0
mov al,ch
mov bl,10
div bl
xchg al,ah
mov ah,0
mov si,ax
mov al,numbers[si]
mov dx,2031h
out dx,al

; for -        
mov al,numbers[10] 
mov dx,2032h
out dx,al 

; for minute first digit

mov ax,0
mov al,cl
mov bl,10
div bl
mov ah,0
mov si,ax
mov al,numbers[si]
mov dx,2033h
out dx,al 


; for minute second digit 

mov ax,0
mov al,cl
mov bl,10
div bl
xchg al,ah
mov ah,0
mov si,ax
mov al,numbers[si]
mov dx,2034h
out dx,al

; for -        
mov al,numbers[10] 
mov dx,2035h
out dx,al 
          
          
; for second first digit

mov ax,0
mov al,bh
mov bl,10
div bl
mov ah,0
mov si,ax
mov al,numbers[si]
mov dx,2036h
out dx,al 


; for second second digit 

mov ax,0
mov al,bh
mov bl,10
div bl
xchg al,ah
mov ah,0
mov si,ax
mov al,numbers[si]
mov dx,2037h
out dx,al




jmp $


ret      

NUMBERS  db 00111111b, 00000110b, 01011011b, 01001111b, 01100110b, 01101101b, 01111101b, 00000111b, 01111111b, 01101111b, 01000000b



