.model small
.code 
org 100h

start: 
jmp main

	t1 db 10,13,"COLOR         1st Band       2nd Band        3rd Band         4th Band $"
	t2 db 10,13,"Black             0              0             10^0                    $"
	t3 db 10,13,"Browm             1              1             10^1                    $"
	t4 db 10,13,"Red               2              2             10^2                    $"
	t5 db 10,13,"Orange            3              3             10^3                    $"
	t6 db 10,13,"Yellow            4              4             10^4                    $"
	t7 db 10,13,"Green             5              5                                     $"
	t8 db 10,13,"Blue              6              6                                     $"
	t9 db 10,13,"Violet            7              7                                     $"
	ta db 10,13,"Grey              8              8                                     $"
	tb db 10,13,"White             9              9                                     $"
	tc db 10,13,"Gold              -              -                           ",32,241,"5% ohms $"
	td db 10,13,"Silver            -              -                          ",32,241,"10% ohms $"
	te db 10,13,"No Color          -              -                          ",32,241,"15% ohms $"
	
main proc near
	mov ax,03
	int 10h
	
	mov ah, 9
	lea dx, t1
	int 21h
	
	mov ah, 9
	lea dx, t2
	int 21h
	mov ah, 9
	lea dx, t3
	int 21h
	mov ah, 9
	lea dx, t4
	int 21h
	mov ah, 9
	lea dx, t5
	int 21h
	mov ah, 9
	lea dx, t6
	int 21h
	mov ah, 9
	lea dx, t7
	int 21h
	mov ah, 9
	lea dx, t8
	int 21h
	mov ah, 9
	lea dx, t9
	int 21h
	mov ah, 9
	lea dx, ta
	int 21h
	mov ah, 9
	lea dx, tb
	int 21h
	mov ah, 9
	lea dx, tc
	int 21h
	mov ah, 9
	lea dx, td
	int 21h
	mov ah, 9
	lea dx, te
	int 21h
	
	int 20h
main endp

end start