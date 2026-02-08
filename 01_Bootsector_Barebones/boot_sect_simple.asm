; Infinite loop (e9 fd ff)
loop:
    jmp loop

; Fill with 510 zeroes minus the size of the previous code
times 510-($-$$) db 0

; Magic Number
dw 0xaa55