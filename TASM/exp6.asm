.model small
.code
org 100h

start: jmp main
x db "INPUT A SINGLE DIGIT NUMBER : $"
y db "INPUT ANOTHER SINGLE DIGIT NUMBER : $"
z db "THEIR SUM IS : $"

main proc near
	mov dx, offset x
	call print
	call input_ok
	mov cl, al
	call down
	mov dx,offset y
	call print
	call input_ok
	mov ch,al
	call down
	mov dx,offset z
	call print
	add ch, cl
	mov ah,2
	mov dl,ch
	add dl,ch
	mov ah,2
	mov dl,ch
	add dl, '0'
	int 21h
	int 20h
main endp

down proc near
	mov ah,2
	mov dl,13
	int 21h
	mov dl,10
	int 21h
	ret
down endp

print proc near
	mov ah, 9
	int 21h
	ret
print endp


input_ok proc near
	mov ah,1
	int 21h
	sub al, '0'
	ret
input_ok endp



end start

	