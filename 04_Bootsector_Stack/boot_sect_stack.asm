mov ah, 0x0e ; tty mode

mov bp, 0x8000 ; address far away from 0x7C00 (which is far away from the bootloader)
mov sp, bp

push 'A'
push 'B'
push 'C'

; should print 'A'
mov al, [bp - 2]
int 0x10

; should print 'C'
mov al, [bp - 6]
int 0x10 

; should print 'C'
pop bx
mov al, bl
int 0x10

; should print 'B'
pop bx
mov al, bl
int 0x10

; should print 'A'
pop bx
mov al, bl
int 0x10

; garbage value
; mov al, [bp]
; int 0x10

jmp $
times 510-$+$$ db 0
dw 0xaa55