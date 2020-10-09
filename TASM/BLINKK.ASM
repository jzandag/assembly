.model small
.stack 100h
.data

Message DB "Thanks Sir Tolitz",10,13,"$"
.code

start:
        mov ax,3                  ;to automatically clear the sreen
        int 10h

        mov ax, @data
        mov ds,ax

        mov ah,2                    ;star the program
        mov dl,24                   ;cursor position to column
        mov dh,12                   ;cursor position to row
        int 10h

        mov ah,9
        mov dx, OFFSET Message      ;attribute byte
        mov bl, 0afh
        mov cx, 17                  ;total number of spaces for the string function
        int 10h
        int 21h

        mov ah,4ch                  ;terminate the program
        int 21h

end start
