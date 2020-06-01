; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    sayi1 dw 10
    sayi2 dw 30
    scarpim dw ?
    sbolum dw ?
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
    
    
    mov ax, sayi1
    mov bx, sayi2
    mov cx, ax
    
    carpimlari_bul:
        add scarpim, bx
        loop carpimlari_bul
    
    buyuk_kucuk_bul: 
        cmp ax, bx
        jb sayi1_kucuk
        ja sayi1_buyuk
        je sayi1_sayi2_esit
        
           
    sayi1_kucuk:
        sub bx, ax
        inc dx
        cmp bx,0
        jnz sayi1_kucuk 
        ret
    
    sayi1_buyuk:
        sub ax,bx
        inc dx
        cmp ax, 0
        jnz sayi1_buyuk
        ret
    
    sayi1_sayi2_esit:
        mov dx, 1
        ret
    
    

   
ends

end start ; set entry point and stop the assembler.
