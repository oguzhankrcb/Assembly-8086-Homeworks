; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    toplam dw 0
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

    mov cx, 101
    dongu:
        dec cx
        mov ax, cx
        mov bx, 3
        mov dx, 0
        div bx 
        cmp dx, 0
        jne dongu
    topla:
        add toplam, cx
        cmp cx, 0
        jne dongu
           
    
           
ends

end start ; set entry point and stop the assembler.
