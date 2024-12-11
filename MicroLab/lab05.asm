
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
                       



mov di,0

mainloop:
mov dx,2000h
add dx,di
mov bx,0

print:

mov si,0
mov cx,5
cmp dx,2027h
jle next
mov dx,2000h


next:
mov al,Dots[bx][si]

out dx,al
inc si
inc dx

cmp si,5
loopne next
add bx,5

cmp bx,40 ;arrayin eleman sayisi
jl print 

;wait some time

mov cx,0010H
wait2: 
loop wait2:

add di,5
cmp di,35
jle end2
mov di,0
end2:
jmp mainloop



                   
ret
Dots DB 01111111B, 01001001B, 01001001B, 01001001B, 00110110B ;B
     DB  01111111b, 01001001b, 01001001b, 01001001b, 01000001b ; E 
     DB 01111111B, 01000000B, 01000000B, 01000000B, 01000000B ; L 
     DB  01111111b, 01001001b, 01001001b, 01001001b, 01000001b ; E
     
      
     DB 01111111B, 01000001B, 01000001B, 00100010B, 00011100B ; D
     
     
     DB  00000000b, 00000000b, 01111111b, 00000000b, 00000000b ; I        
     
     
     DB  00000001b, 00000010b, 01111100b, 00000010b, 00000001b ; y
     
      
     DB  01111111b, 01001001b, 01001001b, 01001001b, 01000001b ; E  
     
     





