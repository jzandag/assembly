.model small
.code
org 100h

start: jmp main
	namef db "Input name of folder"
	buff db 30
	total db 0
	char db 30 dup(0)
main proc near

	mov ah,9
	lea dx, namef
	int 21h
	
	call input
	mov bh, 0
	mov bl, total
	add bx, offset char
	mov byte ptr[bx], 0
	mov dx, offset char 
	mov ah, 39h
	int 21h
	

main endp

input proc near
	mov dx, offset buff
	mov ah,0ah
	int 21h
	ret
input endp

end start