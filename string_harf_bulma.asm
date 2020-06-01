; multi-segment executable file template.

data segment
    ; add your data here!
    Kelime db "Ya Hak!"
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
    
    mov cx, 0
    mov bx, offset Kelime
    mov di, 0
    
    dongu:
        mov al, [bx + di]
        inc di
        cmp al,00h
        je bitir
        cmp al,061h
        jne dongu
        inc cx
        jmp dongu
    bitir:
    
    

  
ends

end start ; set entry point and stop the assembler.
