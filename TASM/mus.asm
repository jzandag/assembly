.model small
.code
org 100h

start:
jmp main
m1 db "torete.mp3",0

main proc near
	mov al, 0
mov dx, offset m1
mov ah, 3dh
int 21h
main endp
end start