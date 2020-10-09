.model small
.code
org 100h

start: jmp main
x db "Input a double digit number: $"
y db "Input another double digit number: $"
z db "Sum: $"
num1 db ?
num2 db ?
dig1 db ?
dig2 db ?                                                                                
ten db 10
sec db ?
min db ?
odd db "It is odd! $"
evenn db "It is even! $"

main proc near
    mov ax, 3                        ;to automatically clear screen
    int 10h                                                                                                                                                                                 
	mov ah,2 
	mov dx, offset x
	call print	
	call input_ok		;cin and cout x
	call two_digit
	mov num1, al
	call down

	mov dx,offset y
	call print
	call input_ok
	call two_digit		;cin and cout y
	mov num2,al                                                           
	call down

	mov dx,offset z
	call print
	mov dh, num2
	add num1, dh		;outputs result


	mov al, num1
	aam
	add ax, 3030h
	push ax
	mov dl, ah
	mov ah, 02h
	mov sec, dl
	cmp sec, 58
	je total3
	cmp sec,59
	je total3
	cmp sec,60
	je total3
	cmp sec,61
	je total3					;jump to total3 if equal
	cmp sec,62
	je total3
	cmp sec,63
	je total3
	cmp sec,64
	je total3
	cmp sec,65
	je total3
	cmp sec,66
	je total3
	cmp sec,67
	jne total2					;jump to total2 if not equal
	je total3
total2:
	int 21h
	pop dx
	mov min, dl
	mov ah, 02h
	int 21h
	jmp odd_even
	
total3:
	pop dx
	mov min, dl
	sub sec, '0'

	mov al, sec
	aam
	add ax, 3030h
	push ax
	mov dl, ah
	mov ah, 02h
	int 21h
	pop dx
	mov ah, 02h
	int 21h
	mov ah,2
	mov dl,min
	int 21h
	jmp odd_even
odd_even:

	call down
	
	sar min,01
	jc oddd


	lea si,evenn
	call disp

	jmp close

	oddd:
	lea si,odd
	call disp

	close:
	mov ah,4CH
	int 21H

	disp proc
	mov dx,si
	mov ah,9h
	int 21h
	ret
	disp endp
	
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
	mov ah, 9h
	int 21h
	ret
print endp

input_ok proc near
	mov ah,1h
	int 21h
	sub al, '0'
	mov dig1,al

	mov ah,1h
	int 21h
	sub al, '0'
	mov dig2,al
	ret
input_ok endp

two_digit proc near
	mov al, dig1
	mul ten
	add al, dig2
	ret
two_digit endp

end start
