.model small
.386
	
.code
org 100h


start:	jmp main

prompt1 db "Input 1st band: $"
prompt2 db "Input 2nd band: $"
prompt3 db "Input 3rd band: $"
prompt4 db "Input 4th band(B,C,D only): $"
invalid db "Invalid choice!$"
choices db "1 - Black",10,13,"$"
choices2 db "2 - Brown",10,13,"$"
choices3 db "3 - Red",10,13,"$"
choices4 db "4 - Orange",10,13,"$"
choices5 db "5 - Yellow",10,13,"$"
choices6 db "6 - Green",10,13,"$"
choices7 db "7 - Blue",10,13,"$"
choices8 db "8 - Violet",10,13,"$"
choices9 db "9 - Grey",10,13,"$"
choicesa db "A - White",10,13,"$"
choicesb db "B - Gold",10,13,"$"
choicesc db "C - Silver",10,13,"$"
choicesd db "D - No Color","$"

band1 db ?
band2 db ?
band3 db ?
band4 db ?
valuep db "Value: $:"
choice db ?
cin_pw db " PASSWORD: $"
inp_choice db "Choice?$"
incpw db "Incorrect password!$"

;pasword variables
pw1 db ?
pw2 db ?
pw3 db ?
pw4 db ?
pw5 db ?
pw6 db ?


; fpage var
k1 db " ",10,13,"$"

;WHITE BACKGROUND
L1 DB 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
;BROWN BACKGROUND
L2 DB " ","$"
;RED BACKGROUND
L3 DB " ","$"
;BLUE BACKGROUND
L4 DB " ","$"
;GREEN BACKGROUND
L5 DB " ","$"
;PURPLE BACKGROUND
L6 DB " ","$"

m1 DB 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
m2 db "219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,","$"
n2 db "            RESISTOR READER             ",10,13,"$"
n3 db "        PRESENTED BY BSCPE 3-FS1N       ",10,13,"$"
n4 db "           ANDAG, JOHN ZIDREX M.        ",10,13,"$"
n5 db "          APURA, ALYSSA KARLA N.        ",10,13,"$"
n6 db "         BABARAN, PRECIOUS ANNE S.      ",10,13,"$"
n7 db "            BUNAGAN, JOLES B.           ",10,13,"$"
n8 db "             BUYCO, JAYVEN P.           ",10,13,"$"


p1 db "  ",10,13,"$"
p2 db "  ",10,13,"$"
p3 db 219,219,"  ",10,13,"$"
p4 db 219,219,"  ",10,13,"$"

Q1 DB "  ",10,13,"$"
Q2 DB "    ",10,13,"$"
Q3 DB "      ",10,13,"$"

R1 DB "                                                                                    ",10,13,"$"


;menu variables
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
	k48 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
	k66 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,"$"
	menu1 db "1$"
	menu2 db "2$"
	menu3 db "3$"
	menu1a db " Get resistor value$"
	again? db "Press any key to go back...$"
	menu2a db " Check resistor table$"
	menu3a db " Exit to DOS$"
	
	exit1 db "Please wait $"
	dot db ". $"
	 
	
;resistor output variables
	var1 db 219, 219, '$'
	var2 db 219, 219, 219, 219, '$'
	var3 db 219, 219, 219, 219, 219, 219, '$'
	var5 db 219, 219, 219,  219, 219,219, 219, 219,  219, 219, '$'
	var6 db 219, 219, 219,  219, 219, 219, 219, 219, 219,  219, 219, 219, '$'
	var7 db 219, 219, 219, 219, 219, 219, 219,219, 219, 219, 219, 219, 219, 219,'$'
	var9 db 219, 219, 219, 219, 219, 219, 219,  219, 219,219, 219, 219, 219, 219, 219, 219,  219, 219,'$'
	var15 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,'$'
	var20 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, '$'
	var22 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, '$'
	var74 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  '$'
	var78 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  '$'

	
;variables for multipliers
	mx1 db " $"
	mx2 db " x 10^1$"
	mx3 db " x 10^2$"
	mx4 db " x 10^3$"
	mx5 db " x 10^4$"				
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
	a1 db 219,"$"
a2 db 219,219,"$"
a6 db 219,219,219,219,219,219,"$"
a20 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
a19 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
a17 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'$'
ab20 db 220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,"$"
ab19 db 220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,220,"$"
ac20 db 223,223,223,223,223,223,223,223,223,223,223,223,223,223,223,223,223,223,223,223,"$"

ab db "            ","$"
ac db "PRESS ANY KEY TO GO BACK TO MENU..."
b1 db "  COLOR   ","$"
b2 db " 1ST BAND ","$"
b3 db " 2ND BAND ","$"
b4 db " MULTIPLIER ","$"
b5 db " TOLERANCE ","$"

cb db " BLACK    ","$"
cb1 db "    0     ","$"
cb2 db "      1",234,"    ","$"
c1 db " BROWN    ","$"
c11 db "    1     ","$"
c12 db "     10",234,"      ","$"
c2 db " RED       ","$"
c21 db "    2     ","$"
c22 db "    100",234,"      ","$"
c3 db " ORANGE   ","$"
c31 db "    3     ","$"
c32 db "     1K",234,"      ","$"
c4 db " YELLOW   ","$"
c41 db "    4     ","$"
c42 db "    10K",234,"      ","$"
c5 db " GREEN    ","$"
c51 db "    5     ","$"
c52 db "   100K",234,"     ","$"
c6 db " BLUE     ","$"
c61 db "    6     ","$"
c62 db "     1M",234,"      ","$"
c7 db " VIOLET   ","$"
c71 db "    7     ","$"
c72 db "    10M",234,"      ","$"
c8 db " GREY     ","$"
c81 db "    8     ","$"
c82 db "            ","$"
c9 db " WHITE    ","$"
c91 db "    9     ","$"
c92 db "            ","$"
cc db " GOLD     ","$"
cc1 db "          ","$"
cc2 db "    0.1",234,"    ","$"
cc3 db "    ",241,"5%    ","$"
cd db " SILVER   ","$"
cd1 db "          ","$"
cd2 db "   0.01",234,"    ","$"
cd3 db "   ",241,"10%    ","$"
ce db " NO COLOR ","$"
ce1 db "          ","$"
ce2 db "            ","$"
ce3 db "   ",241,"20%    ","$"

e2 db 219,219,'$'
e3 db 219,219,219,'$'
e4 db 219,219,219,219,'$'
e5 db 219,219,219,219,219,'$'
e6 db 219,219,219,219,219,219,'$'
e7 db 219,219,219,219,219,219,219,'$'
e9 db 219,219,219,219,219,219,219,219,219,'$'
e11 db 219,219,219,219,219,219,219,219,219,219,219,'$'
e13 db 219,219,219,219,219,219,219,219,219,219,219,219,219,'$'
ea9 db 220,220,220,220,220,220,220,220,220,'$'
ea13 db 220,220,220,220,220,220,220,220,220,220,220,220,220,'$'
eb9 db 223,223,223,223,223,223,223,223,223,'$'

main proc far

	mov ax,03h
	int 10h
	
    mov ax , 1003h
    mov bl , 0
    int 10h
;front pages
 
	call front_page
	
;password
	;position of pw
	
	
	mov ah,2
	mov dl,31
	mov dh,21
	int 10h
	
	mov ah, 9
	lea dx, cin_pw
	int 21h
	
	mov ah,7
	int 21h
	mov pw1, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,7
	int 21h
	mov pw2, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov pw3, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov pw4, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov pw5, al
	mov dl, '*'
	mov ah,2
	int 21h
	mov ah,8
	int 21h
	mov pw6, al
	mov dl, '*'
	mov ah,2
	int 21h
	;cmp pw
;inc password
	cmp pw1,'t'		;compares the 3 input character
	cmp pw2,'o'
	cmp pw3,'l'
	cmp pw4,'i'
	cmp pw5,'t'
	cmp pw6,'z'
	jne inv			;if not equal jump to inv
	je val			;if equal jump to val

inv:
	call inc_password

val:

;menu
	;disp menu
	mov ax,03
	int 10h
	
	call menu
	
	mov ah,2
	mov dl, 15
	mov dh, 11
	int 10h
	mov ah,9
	lea dx, menu1
	int 21h
		mov ah,2
	mov dl, 20
	mov dh, 11
	int 10h
	mov ah,9
	lea dx, menu1a
	int 21h
	
		mov ah,2
	mov dl, 15
	mov dh, 14
	int 10h
	mov ah,9
	lea dx, menu2
	int 21h
			mov ah,2
	mov dl, 20
	mov dh, 14
	int 10h
	mov ah,9
	lea dx, menu2a
	int 21h

		mov ah,2
	mov dl, 15
	mov dh, 17
	int 10h
	mov ah,9
	lea dx, menu3
	int 21h
			mov ah,2
	mov dl, 20
	mov dh, 17
	int 10h
	mov ah,9
	lea dx, menu3a
	int 21h
	;cmp disp
	
	mov ah,2
	mov dl, 5
	mov dh, 19
	int 10h	
	mov ah,9
	lea dx, inp_choice
	int 21h
		
	mov ah,2
	mov dl, 5
	mov dh, 20
	int 10h
	
	call input

	mov choice, al
			mov ax,03						;clear screen
	int 10h
	cmp choice, "1"
	je res_output
	cmp choice,"2"
	je disp_table
	cmp choice, "3"
	je exitc
	call notvalid
;get resistor value1
resvalue:
	
	mov ah,2
    mov dl,7                                                        
    mov dh,2
    int 10h
    mov ah,9
    mov dx,offset choices
    mov bl,04fh
    mov cx,9
    int 10h
    int 21h
		mov ah,2
    mov dl,7                                                        
    mov dh,3
    int 10h
	    mov ah,9
    mov dx,offset choices2
    mov bl,04fh
    mov cx,9
    int 10h
    int 21h
		mov ah,2
    mov dl,7                                                        
    mov dh,4
    int 10h
	    mov ah,9
    mov dx,offset choices3
    mov bl,04fh
    mov cx,7
    int 10h
    int 21h
		mov ah,2
    mov dl,7                                                        
    mov dh,5
    int 10h
	    mov ah,9
    mov dx,offset choices4
    mov bl,04fh
    mov cx,10
    int 10h
    int 21h
		mov ah,2
    mov dl,7                                                        
    mov dh,6
    int 10h
	    mov ah,9
    mov dx,offset choices5
    mov bl,04fh
    mov cx,10
    int 10h
    int 21h
	
	mov ah,2
    mov dl,7                                                        
    mov dh,7
    int 10h    
	mov ah,9
    mov dx,offset choices6
    mov bl,04fh
    mov cx,9
    int 10h
    int 21h 
	
	mov ah,2
    mov dl,7                                                        
    mov dh,8
    int 10h	
	mov ah,9
    mov dx,offset choices7
    mov bl,04fh
    mov cx,8
    int 10h
    int 21h 
	
	mov ah,2
    mov dl,7                                                        
    mov dh,9
    int 10h	
	mov ah,9
    mov dx,offset choices8
    mov bl,04fh
    mov cx,10
    int 10h
    int 21h
	
	mov ah,2
    mov dl,7                                                        
    mov dh,10
    int 10h    
	mov ah,9
    mov dx,offset choices9
    mov bl,04fh
    mov cx,8
    int 10h
    int 21h
	
	mov ah,2
    mov dl,7                                                        
    mov dh,11
    int 10h    
	mov ah,9
    mov dx,offset choicesa
    mov bl,04fh
    mov cx,9
    int 10h
    int 21h 
	
	mov ah,2
    mov dl,7                                                        
    mov dh,12
    int 10h	
	mov ah,9
    mov dx,offset choicesb
    mov bl,04fh
    mov cx,8
    int 10h
    int 21h 
	mov ah,2
    mov dl,7                                                        
    mov dh,13
    int 10h	
	mov ah,9
    mov dx,offset choicesc
    mov bl,04fh
    mov cx,10
    int 10h
    int 21h 
	mov ah,2
    mov dl,7                                                        
    mov dh,14
    int 10h	
	mov ah,9
    mov dx,offset choicesd
    mov bl,04fh
    mov cx,12
    int 10h
    int 21h
	
	mov ah,2
	mov dl,53
	mov dh,3
	int 10h
	mov ah, 9
	mov dx, offset prompt1			;Insert band1
	int 21h
		mov ah,2
	mov dl,53
	mov dh,4
	int 10h
	call input
	mov band1, al
	
		mov ah,2
	mov dl,53
	mov dh,6
	int 10h
	mov ah, 9
	mov dx, offset prompt2			;insert band2
	int 21h
	mov ah,2
	mov dl,53
	mov dh,7
	int 10h
	call input
	mov band2, al
	
		mov ah,2
	mov dl,53
	mov dh,9
	int 10h
	mov ah, 9
	mov dx, offset prompt3			;insert band3
	int 21h
		mov ah,2
	mov dl,53
	mov dh,10
	int 10h
	call input
	mov band3, al
	
		mov ah,2
	mov dl,53
	mov dh,12
	int 10h
	mov ah, 9
	mov dx, offset prompt4			;insert band4
	int 21h
		mov ah,2
	mov dl,53
	mov dh,13
	int 10h
	call input
	mov band4, al
	;output value
	
	mov ah,2
	mov dl,15
	mov dh,16
	int 10h
	mov ah,9
	lea dx, valuep
	int 21h
	
	call value1
	call value2
	call value3
	call value4
	
	mov ah,2
	mov dl,20
	mov dh, 17
	int 10h
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
	
        mov ah,2
        mov dl,11
        mov dh,20
        int 10h
        mov ah,9
        mov dx,offset again?
        mov bl,030h
        mov cx,27
        int 10h
        int 21h
		
		mov ah,7
		int 21h
		
		

	jmp val
;table
disp_table:
	call table1

;Exit to DOS
exitc:
	call load_exit
exit:
	int 20h
	

main endp

input proc far
	mov ah, 1
	int 21h
	ret
input endp

value1 proc far
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

value2 proc far
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
	mov ah,2
	mov dl,20
	mov dh, 17
	int 10h
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

value3 proc far	
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
	mov ah,2
	mov dl,20
	mov dh, 17
	int 10h
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

value4 proc nfar	
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
	mov ah,2
	mov dl,20
	mov dh, 17
	int 10h
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

table1 proc far
		mov ah,2
        mov dl,1                                                          
        mov dh,1
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,011h
        mov cx,20
        int 10h
        int 21h       

        mov ah,2
        mov dl,21
        mov dh,1
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,011h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,41
        mov dh,1
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,011h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,1
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,011h
        mov cx,1
        int 10h
        int 21h


        mov ah,2
        mov dl,1
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,022h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,21
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,022h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,41
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,022h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,022h
        mov cx,1
        int 10h
        int 21h


                mov ah,2
        mov dl,1
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,033h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset ab20
        mov bl,037h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,22
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset ab20
        mov bl,037h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,42
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset ab20
        mov bl,037h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,033h
        mov cx,1
        int 10h
        int 21h



        mov ah,2
        mov dl,1
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,044h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset b1
        mov bl,007h                                                                                                                                                                                                                                                             
        mov cx,10                                                                                                                                                                                                                                
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset b2
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset b3
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset b4
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset b5
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,044h
        mov cx,1
        int 10h
        int 21h


        mov ah,2
        mov dl,1
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,055h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,007h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,23
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,007h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset a19
        mov bl,007h
        mov cx,19
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,055h
        mov cx,1
        int 10h
        int 21h



        mov ah,2
        mov dl,1
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset cb
        mov bl, 007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset cb1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset cb1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset cb2
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h


	mov ah,2
        mov dl,1
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset c1
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset c11
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset c11
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset c12
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset c2
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset c21
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset c21
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset c22
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset c3
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset c31
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset c31
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset c32
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset c4
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset c41
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset c41
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset c42
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset c5
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset c51
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset c51
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset c52
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset c6
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset c61
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset c61
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset c62
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset c7
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset c71
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset c71
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset c72
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset c8
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset c81
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset c81
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset c82
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset c9
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset c91
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset c91
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset c92
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset ab
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,15
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset cc
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset cc1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset cc1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset cc2
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset cc3
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,16
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h



	mov ah,2
        mov dl,1
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset cd
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset cd1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset cd1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset cd2
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset cd3
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,17
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h


	mov ah,2
        mov dl,1
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,3
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset ce
        mov bl,007h
	mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,13
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,14
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset ce1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset ce1
        mov bl,007h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,36
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset ce2
        mov bl,007h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,49
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset ce3
        mov bl,007h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,077h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,18
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h


        mov ah,2
        mov dl,1
        mov dh,19
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,2
        mov dh,19
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,077h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,22
        mov dh,19
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,077h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,42
        mov dh,19
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,077h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,19
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,008h
        mov cx,1
        int 10h
        int 21h


	mov ah,2
        mov dl,1                                                          
        mov dh,20
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,033h
        mov cx,20
        int 10h
        int 21h       

        mov ah,2
        mov dl,21
        mov dh,20
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,033h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,41
        mov dh,20
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,033h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,20
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,033h
        mov cx,1
        int 10h
        int 21h


	mov ah,2
        mov dl,1                                                          
        mov dh,21
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,078h
        mov cx,20
        int 10h
        int 21h       

        mov ah,2
        mov dl,21
        mov dh,21
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,078h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,41
        mov dh,21
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,078h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,21
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,078h
        mov cx,1
        int 10h
        int 21h


	mov ah,2
        mov dl,1                                                          
        mov dh,22
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,078h
        mov cx,20
        int 10h
        int 21h       

        mov ah,2
        mov dl,21
        mov dh,22
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,078h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,41
        mov dh,22
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,078h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,61
        mov dh,22
        int 10h
        mov ah,9
        mov dx,offset a1
        mov bl,078h
        mov cx,1
        int 10h
        int 21h


	mov ah,2
        mov dl,1                                                          
        mov dh,23
        int 10h
        mov ah,9
        mov dx,offset a20
        mov bl,044h
        mov cx,20
        int 10h
        int 21h       

        mov ah,2
        mov dl,21
        mov dh,23
        int 10h
        mov ah,9
        mov dx,offset a6
        mov bl,044h
        mov cx,6
        int 10h
        int 21h

        mov ah,2
        mov dl,27
        mov dh,23
        int 10h
        mov ah,9
        mov dx,offset ac
        mov bl,0C7h
        mov cx,35
        int 10h
        int 21h


        

        mov ah,2
        mov dl,62
	mov dh,1
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,011h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,69
	mov dh,1
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,077h
        mov cx,3
        int 10h
        int 21h
 
        mov ah,2
        mov dl,72
	mov dh,1
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,011h
        mov cx,7
        int 10h
        int 21h

	
	mov ah,2
        mov dl,62
	mov dh,2
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,022h
        mov cx,7
        int 10h
        int 21h 

        mov ah,2
        mov dl,69
	mov dh,2
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,077h
        mov cx,3
        int 10h
        int 21h
 
        mov ah,2
        mov dl,72
	mov dh,2
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,022h
        mov cx,7
        int 10h
        int 21h
        

	mov ah,2
        mov dl,62
	mov dh,3
        int 10h
        mov ah,9
        mov dx,offset e6 
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 

	mov ah,2
        mov dl,68
	mov dh,3
        int 10h
        mov ah,9
        mov dx,offset e5 
        mov bl,066h
        mov cx,5
        int 10h
        int 21h 

	mov ah,2
        mov dl,73
	mov dh,3
        int 10h
        mov ah,9
        mov dx,offset e6 
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,4
        int 10h
        mov ah,9
        mov dx,offset e3 
        mov bl,044h
        mov cx,3
        int 10h
        int 21h

	mov ah,2
        mov dl,65
	mov dh,4
        int 10h
        mov ah,9
        mov dx,offset e11
        mov bl,066h
        mov cx,11
        int 10h
        int 21h 

	mov ah,2
        mov dl,76
	mov dh,4
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,044h
        mov cx,3
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,5
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,055h
        mov cx,2
        int 10h
        int 21h 

	mov ah,2
        mov dl,64
	mov dh,5
        int 10h
        mov ah,9
        mov dx,offset e13 
        mov bl,066h
        mov cx,13
        int 10h
        int 21h 

	mov ah,2
        mov dl,77
	mov dh,5
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,055h
        mov cx,2
        int 10h
        int 21h  


	mov ah,2
        mov dl,62
	mov dh,6
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h 

	mov ah,2
        mov dl,64
	mov dh,6
        int 10h
        mov ah,9
        mov dx,offset e13 
        mov bl,00Eh
        mov cx,13
        int 10h
        int 21h 

	mov ah,2
        mov dl,77
	mov dh,6
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,7
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h 

	mov ah,2
        mov dl,64
	mov dh,7
        int 10h
        mov ah,9
        mov dx,offset e13 
        mov bl,066h
        mov cx,13
        int 10h
        int 21h 

	mov ah,2
        mov dl,77
	mov dh,7
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,8
        int 10h
        mov ah,9
        mov dx,offset e3 
        mov bl,008h
        mov cx,3
        int 10h
        int 21h

	mov ah,2
        mov dl,65
	mov dh,8
        int 10h
        mov ah,9
        mov dx,offset e11
        mov bl,066h
        mov cx,11
        int 10h
        int 21h 

	mov ah,2
        mov dl,76
	mov dh,8
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,008h
        mov cx,3
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,9
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,9
        int 10h
        mov ah,9
        mov dx,offset e9 
        mov bl,066h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,9
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,10
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,10
        int 10h
        mov ah,9
        mov dx,offset ea9 
        mov bl,061h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,10
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,11
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,11
        int 10h
        mov ah,9
        mov dx,offset e9 
        mov bl,011h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,11
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,12
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,12
        int 10h
        mov ah,9
        mov dx,offset eb9 
        mov bl,061h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,12
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,13
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,13
        int 10h
        mov ah,9
        mov dx,offset e9 
        mov bl,066h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,13
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,14
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,14
        int 10h
        mov ah,9
        mov dx,offset e9 
        mov bl,000h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,14
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,15
        int 10h
        mov ah,9
        mov dx,offset e4
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 

	mov ah,2
        mov dl,66
	mov dh,15
        int 10h
        mov ah,9
        mov dx,offset eb9 
        mov bl,060h
        mov cx,9
        int 10h
        int 21h 

	mov ah,2
        mov dl,75
	mov dh,15
        int 10h
        mov ah,9
        mov dx,offset e4 
        mov bl,008h
        mov cx,4
        int 10h
        int 21h 


	mov ah,2
        mov dl,62
	mov dh,16
        int 10h
        mov ah,9
        mov dx,offset e3 
        mov bl,008h
        mov cx,3
        int 10h
        int 21h

	mov ah,2
        mov dl,65
	mov dh,16
        int 10h
        mov ah,9
        mov dx,offset e11
        mov bl,066h
        mov cx,11
        int 10h
        int 21h 

	mov ah,2
        mov dl,76
	mov dh,16
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,008h
        mov cx,3
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,17
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h 

	mov ah,2
        mov dl,64
	mov dh,17
        int 10h
        mov ah,9
        mov dx,offset ea13 
        mov bl,064h
        mov cx,13
        int 10h
        int 21h 

	mov ah,2
        mov dl,77
	mov dh,17
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,18
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h 

	mov ah,2
        mov dl,64
	mov dh,18
        int 10h
        mov ah,9
        mov dx,offset e13 
        mov bl,044h
        mov cx,13
        int 10h
        int 21h 

	mov ah,2
        mov dl,77
	mov dh,18
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,19
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h 

	mov ah,2
        mov dl,64
	mov dh,19
        int 10h
        mov ah,9
        mov dx,offset e13 
        mov bl,066h
        mov cx,13
        int 10h
        int 21h 

	mov ah,2
        mov dl,77
	mov dh,19
        int 10h
        mov ah,9
        mov dx,offset e2 
        mov bl,008h
        mov cx,2
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,20
        int 10h
        mov ah,9
        mov dx,offset e3 
        mov bl,033h
        mov cx,3
        int 10h
        int 21h

	mov ah,2
        mov dl,65
	mov dh,20
        int 10h
        mov ah,9
        mov dx,offset e11
        mov bl,066h
        mov cx,11
        int 10h
        int 21h 

	mov ah,2
        mov dl,76
	mov dh,20
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,033h
        mov cx,3
        int 10h
        int 21h


	mov ah,2
        mov dl,62
	mov dh,21
        int 10h
        mov ah,9
        mov dx,offset e6 
        mov bl,008h
        mov cx,6
        int 10h
        int 21h 

	mov ah,2
        mov dl,68
	mov dh,21
        int 10h
        mov ah,9
        mov dx,offset e5 
        mov bl,066h
        mov cx,5
        int 10h
        int 21h 

	mov ah,2
        mov dl,73
	mov dh,21
        int 10h
        mov ah,9
        mov dx,offset e6 
        mov bl,008h
        mov cx,6
        int 10h
        int 21h 


        mov ah,2
        mov dl,62
	mov dh,22
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,008h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,69
	mov dh,22
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,077h
        mov cx,3
        int 10h
        int 21h
 
        mov ah,2
        mov dl,72
	mov dh,22
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,008h
        mov cx,7
        int 10h
        int 21h


        mov ah,2
        mov dl,62
	mov dh,23
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,044h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,69
	mov dh,23
        int 10h
        mov ah,9
        mov dx,offset e3
        mov bl,077h
        mov cx,3
        int 10h
        int 21h
 
        mov ah,2
        mov dl,72
	mov dh,23
        int 10h
        mov ah,9
        mov dx,offset e7
        mov bl,044h
        mov cx,7
        int 10h
        int 21h
		
		mov ah,7
		int 21h
		
		mov ax,03
		int 10h
		
		jmp val
		ret
table1 endp

res_output proc far

		
		mov ah,2
        mov dl,1                                                         
        mov dh,1
        int 10h
        mov ah,9
        mov dx,offset var78
        mov bl,077h
        mov cx,78
        int 10h
        int 21h 
		
		
		mov ah,2
        mov dl,1                                                         
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,77                                                         
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		
		mov ah,2
        mov dl,1                                                         
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		
		

		mov ah,2
        mov dl,67                                                      
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		
		

		mov ah,2
        mov dl,67                                                      
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 	

		mov ah,2
        mov dl,1                                                         
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		
		

		mov ah,2
        mov dl,67                                                      
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		
		

		mov ah,2
        mov dl,67                                                      
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh, 8
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 	
		
		mov ah,2
        mov dl,1                                                         
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		
		

		mov ah,2
        mov dl,67                                                      
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		
		

		mov ah,2
        mov dl,67                                                      
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 	

		mov ah,2
        mov dl,1                                                         
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 				

		mov ah,2
        mov dl,67                                                      
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		 		

		mov ah,2
        mov dl,67                                                      
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh, 14
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 				
		
		mov ah,2
        mov dl,1                                                      
        mov dh, 15
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,3                                                     
        mov dh, 15
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh, 15
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 1                                                     
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 3                                                    
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var6
        mov bl,033h
        mov cx,12
        int 10h
        int 21h 			
		
		mov ah,2
        mov dl, 59                                                   
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var9
        mov bl,033h
        mov cx,18
        int 10h
        int 21h		

		
		mov ah,2
        mov dl, 77                                                  
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		

		mov ah,2
        mov dl, 1                                                     
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 3                                                    
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var6
        mov bl,033h
        mov cx,12
        int 10h
        int 21h 		 	
		
		mov ah,2
        mov dl, 59                                                   
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var9
        mov bl,033h
        mov cx,18
        int 10h
        int 21h		

		
		mov ah,2
        mov dl, 77                                                  
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		
	
		mov ah,2
        mov dl, 1                                                     
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 3                                                    
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var6
        mov bl,033h
        mov cx,12
        int 10h
        int 21h 			
		
		mov ah,2
        mov dl, 59                                                   
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var9
        mov bl,033h
        mov cx,18
        int 10h
        int 21h		

		
		mov ah,2
        mov dl, 77                                                  
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 1                                                
        mov dh, 19
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 19
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 19
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		
		
		mov ah,2
        mov dl, 1                                                
        mov dh, 20
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 20
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 20
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 1                                                
        mov dh, 21
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 21
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 21
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		
		
		mov ah,2
        mov dl, 1                                                
        mov dh, 22
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 22
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 22
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	
		
		mov ah,2
        mov dl, 1                                              
        mov dh, 23
        int 10h
        mov ah,9
        mov dx,offset var78
        mov bl,077h
        mov cx,78
        int 10h
        int 21h	
		
		jmp resvalue
res_output endp

menu proc far
	mov ax,03
	int 10h
	
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
	
	mov ah,2                    ;star the program
    mov dl,17               ;cursor position to column
    mov dh,19                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K60
    mov bl, 03h
    mov cx, 60
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,17               ;cursor position to column
    mov dh,20                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K60
    mov bl, 03h
    mov cx, 60
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13              ;cursor position to column
    mov dh,18                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 02h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19              ;cursor position to column
    mov dh,18                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K48
    mov bl, 0eh
    mov cx, 48
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 02h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,17            ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 02h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0eh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,65            ;cursor position to column
    mov dh,17                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0eh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,16                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 02h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,16                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K48
    mov bl, 0eh
    mov cx, 48
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,15                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 02h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,15                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K48
    mov bl, 0eh
    mov cx, 48
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,14                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 02h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,17            ;cursor position to column
    mov dh,14                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 02h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,14                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0eh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,65            ;cursor position to column
    mov dh,14                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0eh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,13                ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 02h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,13                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K48
    mov bl, 0eh
    mov cx, 48
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,12                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 02h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,12                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K48
    mov bl, 0eh
    mov cx, 48
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,11                ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 02h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,17            ;cursor position to column
    mov dh,11                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 02h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,11                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0eh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,65            ;cursor position to column
    mov dh,11                  ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0eh
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,13            ;cursor position to column
    mov dh,10                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 02h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19            ;cursor position to column
    mov dh,10                 ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K48
    mov bl, 0eh
    mov cx, 48
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,9               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K66
    mov bl, 0ch
    mov cx, 66
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,3                ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K66
    mov bl, 0ch
    mov cx, 66
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,4               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,5               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,6               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,7               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,7            ;cursor position to column
    mov dh,8               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,71            ;cursor position to column
    mov dh,4               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	
	mov ah,2                    ;star the program
    mov dl,71            ;cursor position to column
    mov dh,5               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,71            ;cursor position to column
    mov dh,6              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,71            ;cursor position to column
    mov dh,7               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,71            ;cursor position to column
    mov dh,8               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 0ch
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,9           ;cursor position to column
    mov dh,4               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,9           ;cursor position to column
    mov dh,5               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,9           ;cursor position to column
    mov dh,6               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,9           ;cursor position to column
    mov dh,7               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,9           ;cursor position to column
    mov dh,8               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67          ;cursor position to column
    mov dh,4               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67          ;cursor position to column
    mov dh,5               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67           ;cursor position to column
    mov dh,6               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67          ;cursor position to column
    mov dh,7               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,67           ;cursor position to column
    mov dh,8               ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,15          ;cursor position to column
    mov dh,4              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K10
    mov bl, 03h
    mov cx, 10
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,27          ;cursor position to column
    mov dh,4              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,37          ;cursor position to column
    mov dh,4              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,41          ;cursor position to column
    mov dh,4              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,49          ;cursor position to column
    mov dh,4              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,53          ;cursor position to column
    mov dh,4              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,53          ;cursor position to column
    mov dh,5              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,53          ;cursor position to column
    mov dh,6              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,53          ;cursor position to column
    mov dh,7              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,17         ;cursor position to column
    mov dh,5              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,27         ;cursor position to column
    mov dh,5              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,31        ;cursor position to column
    mov dh,5              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K8
    mov bl, 03h
    mov cx, 8
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,43        ;cursor position to column
    mov dh,5              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,49        ;cursor position to column
    mov dh,5              ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,15        ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,19        ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,23       ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,27      ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,35      ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,41      ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,45      ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,49      ;cursor position to column
    mov dh,6             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,15      ;cursor position to column
    mov dh,7             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,21      ;cursor position to column
    mov dh,7             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,27      ;cursor position to column
    mov dh,7             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,31      ;cursor position to column
    mov dh,7             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K8
    mov bl, 03h
    mov cx, 8
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,41     ;cursor position to column
    mov dh,7             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,49      ;cursor position to column
    mov dh,7             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,15     ;cursor position to column
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,21     ;cursor position to column
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,27  
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,37
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
    mov ah,2                    ;star the program
    mov dl,41
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K6
    mov bl, 03h
    mov cx, 6
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,49
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,59
    mov dh,8             ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 03h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,61
    mov dh,4            ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,61
    mov dh,5           ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,61
    mov dh,6          ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,63
    mov dh,4          ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 07h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,63
    mov dh,5        ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 07h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,63
    mov dh,6         ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 07h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,63
    mov dh,7         ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 07h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,63
    mov dh,8        ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K4
    mov bl, 04h
    mov cx, 4
    int 10h
    int 21h
	
	mov ah,2                    ;star the program
    mov dl,61
    mov dh,7         ;cursor position to row
    int 10h
    mov ah,9
    mov dx, OFFSET K2
    mov bl, 03h
    mov cx, 2
    int 10h
    int 21h
	
	ret
menu endp

front_page proc far
	
        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 1             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 78             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 22            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 78             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 2            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 2            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h
                 
        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 9             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 10             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 11            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 11             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 12            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 12             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 15            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 15            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 19            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 20            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 1             ;position for column
        mov dh, 21            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 77             ;position for column
        mov dh, 21             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 07Fh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;EDIT

        mov ah, 2               ;to start program
        mov dl, 0             ;position for column
        mov dh, 1             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 077h           ;attribute byte
        mov cx, 1             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 0             ;position for column
        mov dh, 2             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 077h           ;attribute byte
        mov cx, 1             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 79             ;position for column
        mov dh, 1             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L1
        mov bl, 077h           ;attribute byte
        mov cx, 1             ;number of spaces for the string
        int 10h
        int 21h

;BROWN BACKGROUND

        mov ah, 2               ;to start program
        mov dl, 3             ;position for column
        mov dh, 2             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 74                                                                                                                   ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2               ;to start program
        mov dl, 3             ;position for column
        mov dh, 21             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 22             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 55             ;position for column
        mov dh, 21             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 22             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 10           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 11            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 11            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 12            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 15            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 15            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 19           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 75             ;position for column
        mov dh, 19            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 3             ;position for column
        mov dh, 20            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L2
        mov bl, 066h           ;attribute byte
        mov cx, 73             ;number of spaces for the string
        int 10h
        int 21h


;RED BACKGROUND

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 16             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 16             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 20           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 20             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 55             ;position for column
        mov dh, 20            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 20             ;number of spaces for the string                                                                                                                                                                                                                                                                 
        int 10h
        int 21h
        
        mov ah, 2               ;to start program
        mov dl, 31             ;position for column
        mov dh, 20            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 18             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 5           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 10           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 13           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 13           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 17           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 18           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 18           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 5             ;position for column
        mov dh, 19           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 73             ;position for column
        mov dh, 19           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L3
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h






;BLUE BACKGROUND

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 14             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 4            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 14             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 19            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 16             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 57             ;position for column
        mov dh, 19            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 16             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 35             ;position for column
        mov dh, 19            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 12             ;number of spaces for the string
        int 10h
        int 21h



;
        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 12            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 15            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 17           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 7             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 12            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 15            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 17           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 71             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;INNER BLUE

        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h
        
        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h
        
        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h
;
        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 11            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 12            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 17             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 61             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 61             ;position for column
        mov dh, 11            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 61             ;position for column
        mov dh, 12            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 61             ;position for column
        mov dh, 13            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 61             ;position for column
        mov dh, 14            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L4
        mov bl, 011h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;GREEN BACKGROUND

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 12             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 12             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9               ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 12             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 18            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 12             ;number of spaces for the string
        int 10h
        int 21h

;
        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 13           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 9             ;position for column
        mov dh, 17           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 13           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 69             ;position for column
        mov dh, 17           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;GREEN INNER

        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 8           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 8           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h


;
        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 9           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 10           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 13          ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 14          ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 15             ;position for column
        mov dh, 15          ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 9           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 10           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 13          ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 14          ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 63             ;position for column
        mov dh, 15          ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L5
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h







;PURPLE BACKGROUND

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h           ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 6            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h           ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 7            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h           ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 16            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h           ;attribute byte
        mov cx, 10             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 59             ;position for column
        mov dh, 17            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 10            ;number of spaces for the string
        int 10h
        int 21h

;
        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 13           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 11             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 8            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 9            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 10            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 11           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 12           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 13           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 14           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 15           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2               ;to start program
        mov dl, 65             ;position for column
        mov dh, 16           ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET L6
        mov bl, 055h          ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h









;NAME


        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 3            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N2
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 4             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N3
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 5            ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N4
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 6             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N5
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 7             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N6
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 8             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N7
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 20             ;position for column
        mov dh, 9             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET N8
        mov bl, 077h           ;attribute byte
        mov cx, 0             ;number of spaces for the string
        int 10h
        int 21h





;colors

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h
                  
        mov ah, 2              ;to start program
        mov dl, 27             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p1
        mov bl, 044h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;p2

        mov ah, 2              ;to start program
        mov dl, 35             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p2
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 35             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p2
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 35             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p2
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 35             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p2
        mov bl, 022h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


;p3


        mov ah, 2              ;to start program
        mov dl, 43             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p3
        mov bl, 06Eh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 43             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p3
        mov bl, 06Eh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 43             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p3
        mov bl, 06Eh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 43             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p3
        mov bl, 06Eh           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h


;p4

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 51             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET p4
        mov bl, 068h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;COLOR 2 (Q1)

        mov ah, 2              ;to start program
        mov dl, 25             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 49             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h
            
        mov ah, 2              ;to start program
        mov dl, 25             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 49             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 20             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q1
        mov bl, 066h           ;attribute byte
        mov cx, 2             ;number of spaces for the string
        int 10h
        int 21h

;Q2

        mov ah, 2              ;to start program
        mov dl, 23             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q2
        mov bl, 066h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q2
        mov bl, 066h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 23             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q2
        mov bl, 066h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q2
        mov bl, 066h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

;Q3
        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2              ;to start program
        mov dl, 45             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2             ;to start program
        mov dl, 45             ;position for column
        mov dh, 19             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 21             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 21             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 37             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 45             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 15             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 21             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 37             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 45             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 16             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 21             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 37             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 45             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 17             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 21             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 29             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 37             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 45             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 53             ;position for column
        mov dh, 18             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET Q3
        mov bl, 066h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

;R1
        mov ah, 2               ;to start program
        mov dl, 25             ;position for column
        mov dh, 21             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET R1
        mov bl, 060h           ;attribute byte
        mov cx, 30          ; number of spaces for the string
        int 10h
        int 21h

;blue

        mov ah, 2              ;to start program
        mov dl, 19             ;position for column
        mov dh, 10             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 42             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2              ;to start program
        mov dl, 19             ;position for column
        mov dh, 11             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 42             ;number of spaces for the string
        int 10h
        int 21h


        mov ah, 2              ;to start program
        mov dl, 19             ;position for column
        mov dh, 12             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 42             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 19             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 31             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 18             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 55             ;position for column
        mov dh, 13             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 6             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 19             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 4             ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 33             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 12            ;number of spaces for the string
        int 10h
        int 21h

        mov ah, 2              ;to start program
        mov dl, 57             ;position for column
        mov dh, 14             ;position for row
        int 10h

        mov ah, 9
        mov dx, OFFSET k1
        mov bl, 011h           ;attribute byte
        mov cx, 6            ;number of spaces for the string
        int 10h
        int 21h
		ret
front_page endp


down proc far
	mov ah, 2
	mov dx, 10
	int 21h
	mov dx,13
	int 21h
	ret
	
down endp

inc_password proc far
	
	mov ah,2
	mov dl, 22
	mov dh, 22
	int 10h
	mov ah,9
	lea dx, incpw
	mov bl, 04h
	mov cx, 19
	int 10h
	int 21h
	
	mov ah,86h
	mov cx, 20				;wait function
	mov dx, cx
	int 15h
	
	jmp main
inc_password endp
	
load_exit proc far

	mov ah,9
	lea dx, exit1
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
		mov ah,9
	lea dx, dot
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
		mov ah,9
	lea dx, dot
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
		mov ah,9
	lea dx, dot
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
		mov ah,9
	lea dx, dot
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
		mov ah,9
	lea dx, dot
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
		mov ah,9
	lea dx, dot
	int 21h
		mov ah,86h
	mov cx, 10				;wait function
	mov dx, cx
	int 15h
	ret
load_exit endp

notvalid proc far

	mov ah,9
	lea dx, invalid
	int 21h
	

		mov ah,2
        mov dl, 1                                              
        mov dh, 23
        int 10h
	int 20h
notvalid endp

end start