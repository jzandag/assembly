.model small
.stack 100h
.data



.code
start:

main proc near
	mov cx, 26
a:	call az
	loop a
	int 21h
	int 20h

main 	endp

az proc near
	mov ah, 9
	mov dx, 'a'
	inc dx
	int 21h
az endp
	
end start