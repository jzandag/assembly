.model small
.stack 100h
.data

M4 DB "ZZZZZZZZ",10,13,"$"
M1 DB "ZZ",10,13,"$"

.code

start:
        mov ax,3                  ;to automatically clear the sreen
        int 10h

        mov ax, @data
        mov ds,ax

        ;1st h

        mov ah,2                    ;star the program
        mov dl,24                   ;cursor position to column
        mov dh,12                   ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 0afh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h

	;2nd h

	mov ah,2                    ;star the program
        mov dl,22                   ;cursor position to column
        mov dh,13                   ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 0efh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h
	
	;3rd h

	mov ah,2                    ;star the program
        mov dl,20                   ;cursor position to column
        mov dh,14                  ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 09fh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h

	;top z

	mov ah,2                    ;star the program
        mov dl,18                   ;cursor position to column
        mov dh,11                  ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M4      ;attribute byte
        mov bl, 0cfh
        mov cx, 8                  ;total number of spaces for the string function
        int 10h
        int 21h	

	;low z

	mov ah,2                    ;star the program
        mov dl,18                   ;cursor position to column
        mov dh,15                  ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 0afh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h	
	
	;m4

	mov ah,2                    ;star the program
        mov dl,20                   ;cursor position to column
        mov dh,15                  ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 0ffh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h	

	mov ah,2                    ;star the program
        mov dl,22                   ;cursor position to column
        mov dh,15                  ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 0dfh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h	

	mov ah,2                    ;star the program
        mov dl,24                   ;cursor position to column
        mov dh,15                  ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET M1      ;attribute byte
        mov bl, 0ffh
        mov cx, 2                  ;total number of spaces for the string function
        int 10h
        int 21h	

	mov ah, 4ch
	int 21h


end start
