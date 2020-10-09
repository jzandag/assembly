.model small
.code
org 100h

start: jmp main
	line db 219,219,'$'

main proc near
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,1                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET l1 
	mov bl, 03h
	int 10h
    int 21h
	
	mov ah,86h
	mov cx,20
	mov dx,cx
	int 15h
	
	mov ah,2                    ;star the program
    mov dl,26                   ;cursor position to column
    mov dh,1                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET l1 
	mov bl, 03h
	int 10h
    int 21h
		mov ah,86h
	mov cx,20
	mov dx,cx
	int 15h
main end
end start