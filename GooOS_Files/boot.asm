org 0x7c00 ; Informs NASM of the starting address

; Prints a string to the screen
mov ah, 0x0e
mov si, greeting
mov al, [si]
cmp al, 0
je end
repeat:
int 0x10
inc si
mov al, [si]
cmp al, 0
jne repeat
end:

jmp $              ; Loop forever

greeting: db "Hello world!", 0
times 510-($-$$) db 0 ; Pad the rest of the 512 bytes with zeros
dw 0xaa55             ; BIOS boot signature
