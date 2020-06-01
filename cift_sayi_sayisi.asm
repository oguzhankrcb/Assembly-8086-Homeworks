; multi-segment executable file template.

data segment
    ; add your data here!
    sayi db 3,2,5,7,4,8,6 
    sayac db 0
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
    
    mov bx, offset sayi
    
    mov cx, 8
    dongu:
        dec cx
        cmp cx, 0
        je bitir
        mov ax, [bx]
        inc bx
        ror al, 1
        jc dongu
    
    
    sayi_arttir:
        inc sayac
        cmp cx, 0 
        jne dongu
    
    bitir:

    
ends

end start ; set entry point and stop the assembler.
