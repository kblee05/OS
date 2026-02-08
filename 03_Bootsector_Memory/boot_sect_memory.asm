[org 0x7C00] ; offset for memory

the_secret:
    db "X"

mov ah, 0x0e
mov al, [the_secret]
int 0x10

jmp $

times 510 - $ + $$ db 0
dw 0xaa55