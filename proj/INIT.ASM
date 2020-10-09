.model small
.code
org 100h

start: jmp main
	line db 219,219,'$'

main proc near
	mov ax,03
	int 10h
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,1                   ;cursor position to row
    int 10h
    mov ah,9
   
   mov dx, OFFSET line
	mov bl, 03h
	mov cx,2
	int 10h
    int 21h
	
	mov ah,86h
	mov cx,15
	mov dx,cx
	int 15h
	
	mov ah,2                    ;star the program
    mov dl,26                   ;cursor position to column
    mov dh,1                   ;cursor position to row
    int 10h
    mov ah,9
   
   lea dx, line
	mov bl, 03h
	mov cx, 2
	int 10h
    int 21h
	
		mov ah,86h
	mov cx,15
	mov dx,cx
	int 15h
	
	int 20h
main endp

end start