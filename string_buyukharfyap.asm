; multi-segment executable file template.

data segment
    ; add your data here!
    str db "karabuk"
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

    mov bx, offset str
    mov di, 0
    dongu:
        mov al, [bx + di]
        sub al, 32
        mov [bx + di], al
        inc di
        cmp di, 7
        jne dongu
     
     
     
    
    
     
ends

end start ; set entry point and stop the assembler.
