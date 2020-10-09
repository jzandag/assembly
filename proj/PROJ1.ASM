.model small
.stack 100h
.data
	
k2 db 219,219,"$"
k4 db 219,219,219,219,"$"
k6 db 219,219,219,219,219,219,"$"
k8 db 219,219,219,219,219,219,219,219,"$"
k10 db 219,219,219,219,219,219,219,219,219,219,"$"
k38 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
k42 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
k60 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
k74 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
k78 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"


.code

start:
	
main proc near
	mov ax, 03		;clears the screen
	int 10h

    mov ax , 1003h
    mov bl , 0
    int 10h

     
    mov ax, @data
    mov ds,ax
	
    mov ah,2                    ;star the program
    mov dl,1                  ;cursor position to column
    mov dh,1                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K78  
    mov bl, 0fh
    mov cx, 78
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1                  ;cursor position to column
    mov dh,23                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K78  
    mov bl, 0fh
    mov cx, 78
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1                  ;cursor position to column
    mov dh,2                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3                  ;cursor position to column
    mov dh,2                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K74  
    mov bl, 03h
    mov cx, 74
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,2                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,3                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,4                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,5                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,6                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,7                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,8                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,9                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,10                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,11                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,12                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,13                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,14                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,15                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,16                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,17                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,18                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,19                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,20                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,21                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,1               ;cursor position to column
    mov dh,22                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,3                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,4                   ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,5                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,6                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,7                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,8                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,9                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,10                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,11                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,12                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,13                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,14                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,14                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,15                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,16                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,18                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,19                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,20                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,21                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,77               ;cursor position to column
    mov dh,22                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2  
    mov bl, 0fh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,3                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,3                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,4                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,4                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,5                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,5                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,6                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,6                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,7                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,7                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,8                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,8                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,9                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,73               ;cursor position to column
    mov dh,9                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4 
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,10                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,10                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,11                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,11                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,12                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,12                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,13                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,13                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,14                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,14                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,15                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,15                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,16                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,16                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,18                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67               ;cursor position to column
    mov dh,18                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10 
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,19                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2 
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,20                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,21                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K74
    mov bl, 03h
    mov cx, 74
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,3               ;cursor position to column
    mov dh,22                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K74
    mov bl, 03h
    mov cx, 74
    int 10h
    int 21h
	
	
	
	
	
	
	mov ah,4ch
	int 21h
main endp

end start
