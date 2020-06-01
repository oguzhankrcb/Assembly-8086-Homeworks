; multi-segment executable file template.

data segment
    ; add your data here!
    sayi db 21,42,5,17,8,9,51,12,32,3
    adet db ?
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
    mov ah, 0    
    mov cx, 0
    
    
    mov dl, 0
    mov bx, offset sayi
    mov di, 0
    dongu:
        mov al, [bx + di]
        inc di
        add dl, al
        cmp di, 10
        jne dongu
    mov al, dl
    mov cl, 10
    div cl 
    
    mov di,0
    mov cl,0
    gezdirme:
        mov dl, [bx + di]
        inc di  
        cmp di,10
        je bitir
        cmp dl,al
        jna gezdirme
        inc cl
        jmp gezdirme
        
    bitir:
    
    mov adet, cl
           
    
    
        
                       
   
   
      
ends

end start ; set entry point and stop the assembler.
