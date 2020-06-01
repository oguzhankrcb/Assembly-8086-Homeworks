; multi-segment executable file template.

data segment
    ; add your data here!
    dizi db 12,19,21,13,16,15,17,26,30,32
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
    
   
    lea si, dizi
    mov bx, si
    mov di,-1
    cift_bul:
       mov cx,-1
       inc di
       cmp di, 10
       je bitir
       mov ax, [bx+di]
       push ax
       ror al,1
       pop ax
       jc cift_bul
    tek_bul:
       push di
       inc cx
       cmp cx, di
       je cift_bul 
       mov di, cx
       mov dx, [bx+di]
       push dx
       ror dl,1
       pop dx
       pop di
       jnc tek_bul
    degis:
        push di
        mov di, cx
        mov [bx+di], al
        pop di
        mov [bx+di], dl
        cmp di, 10
        jne cift_bul
    bitir:
         
    
       
           
    
    
        
        
        
                
    
    
        
       
ends

end start ; set entry point and stop the assembler.
