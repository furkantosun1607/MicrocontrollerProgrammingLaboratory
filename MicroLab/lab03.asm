
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

MOV AL, A
MOV BL, B

EUC_LOOP:
CMP BL, 0          ; E�er BL = 0 ise d�ng�den ��k
JE DONE

MOV AH, 0          ; DIV komutundan �nce AH'yi s�f�rla
DIV BL             ; AL/BL -> AL: b�l�m, AH: kalan
MOV AL, BL         ; AL <- BL (k���k say� b�y�k say�ya ge�iyor)
MOV BL, AH         ; BL <- AH (kalan k���k say� oluyor)
JMP EUC_LOOP       ; D�ng�y� tekrarla

DONE:
MOV result, AL     ; AL'deki EBOB'u sonucu kaydet
HLT                ; Program� durdur









END:
HLT



ret

result db 0
A db 36
B db 24




