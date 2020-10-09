.model small
.code
org 100h

s: jmp main			;jump to main 
a db "Enter password:$"
b db 10,13,"Password accepted!$"
c db 10,13,"Invalid password$"
ol db ?
ql db ?
wl db ?
el db ?

main proc near
	mov ax, 03		;clears the screen
	int 10h

	mov ah,9
	lea dx,a
	int 21h

	mov ah,7
	int 21h
	mov bl, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,7
	int 21h
	mov ol, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov dh, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov ql, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov wl, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov el, al
	mov dl, '*'
	mov ah,2
	int 21h
	
	cmp bl,'P'		;compares the 3 input character
	cmp ol,'U'
	cmp dh,'P'
	cmp ql,'P'
	cmp wl,'U'
	cmp el,'P'
	jne inv			;if not equal jump to inv
	je val			;if equal jump to val

inv:
	mov ah,9		;displays the third string
	lea dx,c
	int 21h
	jmp exit

val:
	mov ah,9		;display 2nd string
	lea dx,b
	int 21h


exit: int 20h

main endp

end s