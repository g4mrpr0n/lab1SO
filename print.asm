go:
    org 7c00H

    mov AH, 0eH
    mov AL, ">"
    mov BL, 0h
    int 10h

    mov AH, 02H
    mov BH, 0
    mov DH, 0
    mov DL, 1
    int 10h

    mov AH, 09H
    mov AL, 1AH
    mov BH, 0
    mov BL, 05H
    mov CX, 1
    int 10h

    mov AH, 02H
    mov BH, 0
    mov DH, 0
    mov DL, 2
    int 10h
    

    mov AH, 0aH
    mov AL, 36d
    mov BH, 0
    mov CX, 1
    int 10h

    
    mov AH, 02H
    mov BH, 0
    mov DH, 1
    mov DL, 0
    int 10h

    mov BH, 0
    mov AX, 0H
    mov ES, AX
    mov BP, msg
    mov BL, 0bH
    mov CX, 3
    mov DH, 1
    mov DL, 0

    mov AX, 1300H
    int 10h

  
    mov BH, 0
    mov BL, 0cH
    mov CX, 3
    mov DH, 2
    mov DL, 0
    mov AX, 0H
    mov ES, AX
    mov BP, msg1
    mov AX, 1301H
    int 10h
    
    mov BH, 0
    mov CX, 6
    mov DH, 3
    mov DL, 0
    mov AX, 0H
    mov ES, AX
    mov BP, msg2
    mov AX, 1302H
    int 10h

    mov BH, 0
    mov CX, 2
    mov DH, 4
    mov DL, 0
    mov AX, 0H
    mov ES, AX
    mov BP, msg3
    mov AX, 1303H
    int 10h

    jmp $
    msg dd "..."
    msg3 db ':', 02H, ')', 02H
    msg1 dd ",,,"
    msg2 db '/', 07H
    

;nasm -f bin -o print.bin print.asm