.model small
.stack 100h
.data
	l1 db 201,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,187,10,13,"$"
	l2 db 186,"                        ",186,10,13,"$"
	l3 db 186,"                        ",186,10,13	,"$"
	l4 db 186,"                        ",186,10,13,"$"
	l5 db 186,"                        ",186,10,13,"$"	
	l6 db 186,"                        ",186,10,13,"$"	
	l7 db 200,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,188,10,13,"$"
	l8 db "Press any key to continue...$"
	
.code

start:
	
main proc near
	mov ax, 03		;clears the screen
	int 10h


	l:
	mov ax, @data
    mov ds,ax
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,1                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET l1      
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,2
	int 10h
    mov ah,9
    mov dx, OFFSET l2      
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,3  
	int 10h
	mov ah,9
	lea dx, l3
	int 21h
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,4
	int 10h
	mov ah,9
	lea dx, l4
	int 21h

	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,5  
	int 10h
	mov ah,9
	lea dx, l5
	int 21h
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,6  
	int 10h
	mov ah,9
	lea dx, l6
	int 21h
	
	mov ah,2                    ;star the program
    mov dl,24                   ;cursor position to column
    mov dh,7  
	int 10h
	mov ah,9
	lea dx, l7
	int 21h			;end of intro message
	
	mov ah,9
	lea dx, l8
	int 21h	
	mov ah,7					;press any key to continue
	int 21h
	
	mov ah,4ch
	int 21h
main endp

end start