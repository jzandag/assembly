.model small
.stack 100h
.data

	t5 db 219,219,219,219,219,"$"
	t1 db 219, "$"
	.code
start:

main proc near
	mov ax, 03		;clears the screen
	int 10h


	l:
	mov ax, @data
    mov ds,ax
	
	mov ah,2                    ;star the program
    mov dl,10                 ;cursor position to column
    mov dh,5                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET t5   
		mov bl, 89h
	mov cx, 5
	int 10h
    int 21h
	
		mov ah,4ch
	int 21h
main endp

end start