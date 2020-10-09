.model small
.code
org 100h


start:	jmp main

prompt1 db 10,13,"Input 1st band: $"
prompt2 db 10,13,"Input 2nd band: $"
prompt3 db 10,13,"Input 3rd band: $"
prompt4 db 10,13,"Input 4th band(B,C,D only): $"
invalid db 10,13,"Invalid choice!$"
choices db 10,13,"1 - Black",10,13,"2 - Brown",10,13,"3 - Red",10,13,"4 - orange",10,13,"5 - Yellow",10,13,"6 - Green",10,13,"7 - Blue",10,13,"8 - Violet",10,13,"9 - Grey",10,13,"A - White",10,13,"B - Gold",10,13,"C - Silver",10,13,"D - No Color","$"
band1 db ?
band2 db ?
band3 db ?
band4 db ?
valuep db 10,13,"Value: $:"


	mx1 db " $"
	mx2 db " x 10^1$"
	mx3 db " x 10^2$"
	mx4 db " x 10^3$"
	mx5 db " x 10^4$"				;variables for multipliers
	mx6 db " x 10^5$"
	mx7 db " x 10^6$"
	mx8 db " x 10^7$"
	mx9 db " x 10^8$"
	mx10 db " x 10^9$"
	mx11 db " x 10^-1$"
	mx12 db " x 10^-2$"
	
	tolb db 32,241,"5% ohms$"
	tolc db 32,241,"10% ohms$"			;var for tolerance		
	told db 32,241,"20% ohms$"
	
	;table variables
main proc near
;front pages
;password

;inc password

	mov ah,86h
	mov cx, 20				;wait function
	mov dx, cx
	int 15h
;menu
;get resistor value1
	mov ax,03						;clear screen
	int 10h
	
	mov ah, 9
	lea dx, choices			;output choices
	int 21h
	
	call down
	
	mov ah, 9
	mov dx, offset prompt1			;Insert band1
	int 21h
	call input
	mov band1, al
	
	mov ah, 9
	mov dx, offset prompt2			;insert band2
	int 21h
	call input
	mov band2, al
	
	mov ah, 9
	mov dx, offset prompt3			;insert band3
	int 21h
	call input
	mov band3, al
	
	mov ah, 9
	mov dx, offset prompt4			;insert band4
	int 21h
	call input
	mov band4, al
	;output value
	
	mov ah,9
	lea dx, valuep
	int 21h
	
	call value1
	call value2
	call value3
	call value4
	
	mov ah,2
	mov dl, band1
	int 21h
	mov ah,2
	mov dl, band2
	int 21h
	mov ah,9
	mov dx,si
	int 21h
	mov ah,9
	mov dx,di
	int 21h
;table

;Exit to DOS	
	int 20h
	

main endp

input proc near
	mov ah, 1
	int 21h
	ret
input endp

value1 proc near
	cmp band1, '1'
	je black1
	cmp band1, '2'
	je brown1
	cmp band1, '3'
	je red1
	cmp band1, '4'
	je orange1
	cmp band1, '5'
	je yellow1
	cmp band1, '6'
	je green1	
	cmp band1, '7'
	je blue1
	cmp band1, '8'
	je violet1
	cmp band1, '9'
	je grey1
	cmp band1, 'A'
	je white1
	cmp band1, 'B'
	call notvalid
	cmp band1, 'C'
	call notvalid
	cmp band1, 'D'
	call notvalid
black1:
	call down
	mov band1, " "
	ret
brown1:
	call down
	mov band1, "1"
	ret
red1:
	call down
	mov band1, "2"
	ret
orange1:
	call down
	mov band1, "3"
	ret
yellow1:
	call down
	mov band1, "4"
	ret
green1:
	call down
	mov band1, "5"
	ret
blue1:
	call down
	mov band1, "6"
	ret
violet1:
	call down
	mov band1, "7"
	ret
grey1:
	call down
	mov band1, "8"
	ret
white1:
	call down
	mov band1, "9"
	ret
value1 endp

value2 proc near
	cmp band2, '1'
	je black2
	cmp band2, '2'
	je brown2
	cmp band2, '3'
	je red2
	cmp band2, '4'
	je orange2
	cmp band2, '5'
	je yellow2
	cmp band2, '6'
	je green2	
	cmp band2, '7'
	je blue2
	cmp band2, '8'
	je violet2
	cmp band2, '9'
	je grey2
	cmp band2, 'A'
	je white2
	cmp band2, 'B'
	call notvalid
	cmp band2, 'C'
	call notvalid
	cmp band2, 'D'
	call notvalid
black2:
	mov band2, "0"
	ret
brown2:
	mov band2, "1"
	ret
red2:
	mov band2, "2"
	ret
orange2:
	mov band2, "3"
	ret
yellow2:
	mov band2, "4"
	ret
green2:
	mov band2, "5"
	ret
blue2:
	mov band2, "6"
	ret
violet2:
	mov band2, "7"
	ret
grey2:
	mov band2, "8"
	ret
white2:
	mov band2, "9"
	ret
value2 endp

value3 proc near	
	cmp band3, '1'
	je black3
	cmp band3, '2'
	je brown3
	cmp band3, '3'
	je red3
	cmp band3, '4'
	je orange3
	cmp band3, '5'
	je yellow3
	cmp band3, '6'
	je green3	
	cmp band3, '7'
	je blue3
	cmp band3, '8'
	je violet3
	cmp band3, '9'
	je grey3
	cmp band3, 'A'
	je white3
	cmp band3, 'B'
	je gold3
	cmp band3, 'C'
	je silver3
	cmp band3, 'D'
	call notvalid
black3:
	lea si, mx1
	ret
brown3:
	lea si, mx2
	ret
red3:
	lea si, mx3
	ret
orange3:
	lea si, mx4
	ret
yellow3:
	lea si, mx5
	ret
green3:
	lea si, mx6
	ret
blue3:
	lea si, mx7
	ret
violet3:
	lea si, mx8
	ret
grey3:
	lea si, mx9
	ret
white3:
	lea si, mx10		;kulang pa gold
	ret
gold3:
	lea si, mx11
	ret
silver3:
	lea si, mx12
	ret
value3 endp

value4 proc near	
	cmp band4, 'B'
	jne oor
	jmp gold4
oor:
	cmp band4, 'C'
	je silver4
	cmp band4, 'D'
	je null4
	cmp band4, 'b'
	je gold4
	cmp band4, 'c'
	je silver4
	cmp band4, 'd'
	je null4
	cmp band4, '4'
	call notvalid
	cmp band4, '2'
	call notvalid
	cmp band4, '3'
	call notvalid
	cmp band4, '4'
	call notvalid
	cmp band4, '5'
	call notvalid
	cmp band4, '6'
	call notvalid	
	cmp band4, '7'
	call notvalid
	cmp band4, '8'
	call notvalid
	cmp band4, '9'
	call notvalid
	cmp band4, 'A'
	call notvalid

gold4:
	lea di, tolb
	ret
silver4:
	lea di, tolc
	ret
	
null4:
	lea di, told
	ret
value4 endp

down proc near
	mov ah, 2
	mov dx, 10
	int 21h
	mov dx,13
	int 21h
	ret
	
down endp

notvalid proc near
	mov ah,9
	lea dx, invalid
	int 21h
	int 20h
	
notvalid endp

end start