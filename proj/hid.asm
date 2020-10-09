.model small
.code
org 100h

start:
jmp main

hfolder db "Users",0
mainf db "proj",0
buff db 30
total db 0
char db 30 dup(0)
choice1 db 10,13,"1 - Do you want to create a folder?$"
choice2 db 10,13,"2 - Already have a folder?$"
choice3 db 10,13,"3 - Exit to DOS$"
menu21 db 10,13,"1 - Yes$"
menu22 db 10,13,"2 - No$"
menu23 db 10,13,"3 - Back$" 
firstC db ?
l8 db "PLEASE ENTER YOUR CHOICE ? $"

main proc near

;1. Menu
	mov ax, 03				;clear screen
	int 10h
	
	mov ah, 3bh
	lea dx, hfolder				;cd to users
	int 21h
	
	mov ah,2
	mov dl, 24
	mov dh,21
	int 10h
	mov ah,9
	lea dx, l8				;choice
	mov bl, 0eh
	mov cx, 26
	int 10h
	int 21h	
	
	call prompt				;get 1st choice from menu
	
	cmp firstC, '1'
	jne create?
	cmp firstC, '2'
	jne have_folder
	cmp firstC, '3'
	jmp exit
;2. Do you want to create a folder?

create?:

	mov ax,03					;clear screen
	int 10h
	
	mov ah, 9 
	lea dx, menu21
	int 21h
	mov ah, 9 
	lea dx, menu22
	int 21h
	mov ah, 9 
	lea dx, menu23
	int 21h
	call prompt
	
	cmp firstC, '1'
	jne input_folder
	cmp firstC, '2'
	jne have_folder
	cmp firstC, '3'
	jmp exit
	

	
;2a. Yes. Input name of folder
input_folder:
	;design
		
	mov ah,2 
	mov dl, 50
	mov dh, 21				;move cursor
	int 10h
	
	call input
	mov bh, 0
	mov bl, total
	add bx, offset char		; makes folder
	mov byte ptr[bx], 0
	mov dx, offset char                                                      
	mov cx, 03h
	mov ah, 39h
	int 21h
	
;2b. No.
	
;3. Already have a folder?
have_folder:

;3a. Yes. Input name of folder
	;3aa. found?
	
	;3ab. not found
		;3aba. do you want to create? jmp to main
;3b. no
exit:

	int 20h						; return to dos
	
	
main endp

prompt proc near
	mov ah, 6
	mov dl, 255
	int 21h
	mov firstC, al
prompt endp

input proc near
	mov dx, offset buff
	mov ah,0ah					;get input
	int 21h
	ret
input endp
end start