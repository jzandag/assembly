.model small
.code
org 100h

start:
jmp main
buff db 30
total db 0
char db 30 dup(0)
fail db "fail!$"
sss db "sussess!$"
file db "lol.txt",0

main proc near
	call input
	mov bh, 0
	mov bl, total
	add bx, offset char
	mov byte ptr[bx], 0
		mov ah, 3ch
	mov al,0
	mov dx, offset char
	int 21h
	
mov ah, 3ch
mov cx, 2
mov dx, offset file
mov ah, 3ch
int 21h

	jc failure
	
success:
	mov ah,9
	mov dx, offset sss
	int 21h 
	jmp exit
	
failure:
	
	mov ah,9
	mov dx, offset fail
	int 21h
	
	exit:
	int 20h
main endp

input proc near
	mov dx, offset buff
	mov ah,0ah
	int 21h
	ret
input endp

end start