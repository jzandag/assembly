.model small
.code
org 100h

start:
        jmp main
        x db "RED",10,13
        y db "BLUE",10,13,"$"

main    proc near

        mov cx, 4

        mov ah,9
a:      mov dx, offset x
        int 21h
        
         loop a

        mov cx,4

        mov ah,9
b:      mov dx, offset y
        int 21h

        loop b

        int 20h
main    endp

end start
