; multi-segment executable file template.

data segment
    ; add your data here!
    dizi db 10, 2, 5, 7,1, 9
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
    mov ax,0
    mov bx,0
    mov cx,0
    mov dx,0 
 
    lea si, dizi
    mov bx, si
    mov di, 0
    icdongu:
        inc di
        cmp di, 6
        je disdongu
        mov al, [si]
        mov ah, [bx + di]
        cmp al, ah
        jna icdongu
    yerdegis:
        mov [si], ah
        mov [bx + di], al
        jmp icdongu        
    disdongu:
        inc si
        inc cx
        mov di, cx
        mov ax,0
        cmp cx, 6
        jne icdongu
    bitir:
    
        
        
       
        
        
                
    
       
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
