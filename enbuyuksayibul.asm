; multi-segment executable file template.

data segment
    ; add your data here!
    SAYI db 13,23,51,9,11
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax  
        
    mov bx, offset SAYI
    mov cx,4
    mov di, 1 
    mov dl, [bx]
    dongu:
       mov al, [bx + di]
       inc di
       dec cx
       cmp cx, 0
       je bitir
       cmp al,dl
       jna dongu
    enbuyuk_degis:
        mov dl, al
        jmp dongu
        
    bitir:
    
    

   
ends

end start ; set entry point and stop the assembler.
