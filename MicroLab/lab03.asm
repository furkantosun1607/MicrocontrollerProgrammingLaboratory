
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

MOV AL, A
MOV BL, B

EUC_LOOP:
CMP BL, 0          ; Eðer BL = 0 ise döngüden çýk
JE DONE

MOV AH, 0          ; DIV komutundan önce AH'yi sýfýrla
DIV BL             ; AL/BL -> AL: bölüm, AH: kalan
MOV AL, BL         ; AL <- BL (küçük sayý büyük sayýya geçiyor)
MOV BL, AH         ; BL <- AH (kalan küçük sayý oluyor)
JMP EUC_LOOP       ; Döngüyü tekrarla

DONE:
MOV result, AL     ; AL'deki EBOB'u sonucu kaydet
HLT                ; Programý durdur









END:
HLT



ret

result db 0
A db 36
B db 24




