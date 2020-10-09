.model small

.code 
org 100h

start:

	menu1 db 205,205,205,205,205,205,205,205,205,205,205,205,'$'

main proc near

	mov ah, 2
	mov dl, 24
	mov dh, 1			;top menu
	int 10h
	mov ah,9 
	lea dx, menu1
	int 21h
	
	int 20h
main endp

end start