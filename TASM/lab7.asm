.model small
.code
org 100h

start:
jmp main
buff db 30
total db 0
char db 30 dup(0)
x db "Input a string: $"
sss db "SUCCESS! $"
fail db "FAILED! $"

main proc near
	call prompt
	call input
	mov bh, 0
	mov bl, total
	add bx, offset char
	mov byte ptr[bx], 0
	mov dx, offset char
	mov ah, 39h
	int 21h
	mov ah,2
	mov dl,13
	int 21h
	mov dl,10
	int 21h
	jc failure

success:
	mov dx, offset sss
	mov ah, 9
	int 21h
	jmp exit
failure:
	mov dx, offset fail
	mov ah,9
	int 21h
exit:
	int 20h
main endp

prompt proc near
	mov dx, offset x
	mov ah,9
	int 21h
	ret
prompt endp

input proc near
	mov dx, offset buff
	mov ah,0ah
	int 21h
	ret
input endp
	
end start

	
	