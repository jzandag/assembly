.model small
.code
org 100h

start: jmp main
x db "INPUT A SINGLE DIGIT NUMBER : $"
y db "INPUT ANOTHER SINGLE DIGIT NUMBER : $"
z db "THEIR SUM IS : $"
num1 db ?
num2 db ?
result db ?
                                                                                                                                                                                                                                                                                                                
main proc near
	mov dx, offset x
	call print
	call input_ok
        mov num1, al                                                                                      
	call down
	mov dx,offset y
	call print
	call input_ok
        mov num2,al                                                                                                                                                                                                                                                                                                           
	call down
	mov dx,offset z
	call print
        mov dh, num2
        add num1, dh
        mov dl, num1
        mov result,dl

	mov ah,2
        mov dl,result
        add dl,result

	mov al, result
	aam
	add ax, 3030h
	push ax
	mov dl, ah
	mov ah, 02h
	int 21h
	pop dx
	mov ah, 02h
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

	
