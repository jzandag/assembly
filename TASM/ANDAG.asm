.model small
.stack 100h
.data

s2 db   219,219,10,13,"$"
s4 db   219,219,219,219,10,13,"$"
s6 db   219,219,219,219,219,219,10,13,"$"
s8 db   219,219,219,219,219,219,219,219,10,13,"$"
s10 db 219,219,219,219,219,219,219,219,219,219,10,13,"$"
s12 db 219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s14 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s16 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s18 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s20 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s22 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s30 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s32 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
s40 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13,"$"
blk db 219,219,219,219,219,219,10,13,"$"

.code
start:
        mov ax, 3                        ;to automatically clear screen
        int 10h                                                                                                                                                                                 

        mov ax, @data
        mov ds, ax
        

	;r0

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 2                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s40
        mov bl, 00ch                     ;attribute byte
        mov cx, 40                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r1p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 3                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 00ch                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r1p2

        mov ah,2                         ;to start the program
        mov dl, 29                       ;cursor position to col
        mov dh, 3                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl,  00ch                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r2p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 4                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s10
        mov bl, 00ch                     ;attribute byte
        mov cx, 10                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r2p2

        mov ah,2                         ;to start the program
        mov dl, 17                        ;cursor position to col
        mov dh, 4                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s12
        mov bl, 004h                     ;attribute byte
        mov cx, 12                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r2p3

        mov ah,2                         ;to start the program
        mov dl, 33                       ;cursor position to col
        mov dh, 4                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s10
        mov bl, 00ch                     ;attribute byte
        mov cx, 10                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r3p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 5                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 00ch                     ;attribute byte
        mov cx, 8                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r3p2

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 5                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s20
        mov bl, 004h                     ;attribute byte
        mov cx, 20                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r3p3

        mov ah,2                         ;to start the program
        mov dl, 35                        ;cursor position to col
        mov dh, 5                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 00ch                     ;attribute byte
        mov cx, 8                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 00ch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p2

        mov ah,2                         ;to start the program
        mov dl, 11                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 004h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p3

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00dh                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p4

        mov ah,2                         ;to start the program
        mov dl, 17                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s18
        mov bl, 004h                     ;attribute byte
        mov cx, 18                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p5

        mov ah,2                         ;to start the program
        mov dl, 37                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 00ch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p2

        mov ah,2                         ;to start the program
        mov dl, 9                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 004h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p2

        mov ah,2                         ;to start the program
        mov dl, 11                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00dh                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p3

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00fh                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p4

        mov ah,2                         ;to start the program
        mov dl, 17                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00dh                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p5

        mov ah,2                         ;to start the program
        mov dl, 19                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s18
        mov bl, 004h                     ;attribute byte
        mov cx, 18                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p6

        mov ah,2                         ;to start the program
        mov dl, 39                        ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r6p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p2

        mov ah,2                         ;to start the program
        mov dl, 9                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 004h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p2

        mov ah,2                         ;to start the program
        mov dl, 11                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00dh                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p3

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00fh                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p4

        mov ah,2                         ;to start the program
        mov dl, 17                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00dh                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p5

        mov ah,2                         ;to start the program
        mov dl, 19                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s18
        mov bl, 004h                     ;attribute byte
        mov cx, 18                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p6

        mov ah,2                         ;to start the program
        mov dl, 39                        ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p2

        mov ah,2                         ;to start the program
        mov dl, 7                        ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 004h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p3

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00dh                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p4

        mov ah,2                         ;to start the program
        mov dl, 17                        ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s22
        mov bl, 004h                     ;attribute byte
        mov cx, 22                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p5

        mov ah,2                         ;to start the program
        mov dl, 41                        ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p2

        mov ah,2                         ;to start the program
        mov dl, 7                        ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s32
        mov bl, 004h                     ;attribute byte
        mov cx, 32                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p3

        mov ah,2                         ;to start the program
        mov dl, 41                        ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p2

        mov ah,2                         ;to start the program
        mov dl, 7                        ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s32
        mov bl, 004h                     ;attribute byte
        mov cx, 32                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p3

        mov ah,2                         ;to start the program
        mov dl, 41                        ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p2

        mov ah,2                         ;to start the program
        mov dl, 9                        ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s30
        mov bl, 004h                     ;attribute byte
        mov cx, 30                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p3

        mov ah,2                         ;to start the program
        mov dl, 41                        ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p2

        mov ah,2                         ;to start the program
        mov dl, 11                        ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 004h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p3

        mov ah,2                         ;to start the program
        mov dl, 21                        ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s16
        mov bl, 004h                     ;attribute byte
        mov cx, 16                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p4

        mov ah,2                         ;to start the program
        mov dl, 41                        ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p2

        mov ah,2                         ;to start the program
        mov dl, 23                        ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 004h                     ;attribute byte
        mov cx, 8                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p3

        mov ah,2                         ;to start the program
        mov dl, 41                        ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00ch                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p2

        mov ah,2                         ;to start the program
        mov dl, 9                        ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p3

        mov ah,2                         ;to start the program
        mov dl, 35                        ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p1

        mov ah,2                         ;to start the program
        mov dl, 39                        ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p2

        mov ah,2                         ;to start the program
        mov dl, 9                        ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p3

        mov ah,2                         ;to start the program
        mov dl, 11                        ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00fh                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p4

        mov ah,2                         ;to start the program
        mov dl, 31                        ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00fh                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p5

        mov ah,2                         ;to start the program
        mov dl, 35                        ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p6

        mov ah,2                         ;to start the program
        mov dl, 39                        ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 00ch                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 00ch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p2

        mov ah,2                         ;to start the program
        mov dl, 11                        ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p3

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 00fh                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p4

        mov ah,2                         ;to start the program
        mov dl, 21                        ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 00fh                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p5

        mov ah,2                         ;to start the program
        mov dl, 33                        ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p6

        mov ah,2                         ;to start the program
        mov dl, 37                        ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 00ch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 00ch                     ;attribute byte
        mov cx, 8                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p2

        mov ah,2                         ;to start the program
        mov dl, 13                        ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 008h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p3

        mov ah,2                         ;to start the program
        mov dl, 15                        ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 00fh                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p4

        mov ah,2                         ;to start the program
        mov dl, 29                        ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 008h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p5

        mov ah,2                         ;to start the program
        mov dl, 35                        ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 00ch                     ;attribute byte
        mov cx, 8                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r17p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 19                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s10
        mov bl, 00ch                     ;attribute byte
        mov cx, 10                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r17p2

        mov ah,2                         ;to start the program
        mov dl, 17                        ;cursor position to col
        mov dh, 19                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s12
        mov bl, 008h                     ;attribute byte
        mov cx, 12                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r17p3

        mov ah,2                         ;to start the program
        mov dl, 33                        ;cursor position to col
        mov dh, 19                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s10
        mov bl, 00ch                     ;attribute byte
        mov cx, 10                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r18p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 20                       ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 00ch                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r18p2

        mov ah,2                         ;to start the program
        mov dl, 29                        ;cursor position to col
        mov dh, 20                       ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 00ch                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r19p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 21                       ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s40
        mov bl, 00ch                     ;attribute byte
        mov cx, 40                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r19p1

        mov ah,2                         ;to start the program
        mov dl, 15                        ;cursor position to col
        mov dh, 14                       ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET blk
        mov bl, 0fch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r19p1

        mov ah,2                         ;to start the program
        mov dl, 15                        ;cursor position to col
        mov dh, 15                       ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET blk
        mov bl, 0fch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r19p1

        mov ah,2                         ;to start the program
        mov dl, 15                        ;cursor position to col
        mov dh, 16                       ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET blk
        mov bl, 0fch                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h




        mov ah, 4ch                      ;to terminate the program
        int 21h

end start
