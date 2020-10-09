.model small
.stack 100h
.data

r0 db "                                      ",10,13,"$"
s16 db "                ",10,13,"$"
s18 db "                  ",10,13,"$"
s14 db "              ",10,13,"$"
s8 db "        ",10,13,"$"
s4 db "    ",10,13,"$"
s6 db "      ",10,13,"$"
s2 db "  ",10,13,"$"
s20 db "                    ",10,13,"$"
s22 db "                      ",10,13,"$"
s10 db "          ",10,13,"$"

.code
start:
        mov ax, 3                        ;to automatically clear screen
        int 10h                                                                                                                                                                                 

        mov ax, @data
        mov ds, ax

        mov ax, 1003h
        mov bx, 0 ; disable blinking.
        int 10h



	;r0

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 2                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET r0
        mov bl, 080h                     ;attribute byte
        mov cx, 38                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r1p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 3                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s16
        mov bl, 080h                     ;attribute byte
        mov cx, 16                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r1p2

        mov ah,2                         ;to start the program
        mov dl, 23                        ;cursor position to col
        mov dh, 3                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s18
        mov bl, 080h                     ;attribute byte
        mov cx, 18                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h

	;r2p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 4                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 080h                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r2p2

        mov ah,2                         ;to start the program
        mov dl, 25                        ;cursor position to col
        mov dh, 4                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 080h                     ;attribute byte
        mov cx, 8                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r2p3

        mov ah,2                         ;to start the program
        mov dl, 37                        ;cursor position to col
        mov dh, 4                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h

	;r3p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 5                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 080h                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r3p2

        mov ah,2                         ;to start the program
        mov dl, 25                        ;cursor position to col
        mov dh, 5                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r3p3

        mov ah,2                         ;to start the program
        mov dl, 39                        ;cursor position to col
        mov dh, 5                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p1

        mov ah,2                         ;to start the program
        mov dl, 3                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 080h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h

	;r4p2

        mov ah,2                         ;to start the program
        mov dl, 11                       ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p3

        mov ah,2                         ;to start the program
        mov dl, 19                       ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s16
        mov bl, 0F0h                     ;attribute byte
        mov cx, 16                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r4p4

        mov ah,2                         ;to start the program
        mov dl, 39                        ;cursor position to col
        mov dh, 6                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p2

        mov ah,2                         ;to start the program
        mov dl, 9                       ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p3

        mov ah,2                         ;to start the program
        mov dl, 17                       ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s20
        mov bl, 0F0h                     ;attribute byte
        mov cx, 20                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r5p4

        mov ah,2                         ;to start the program
        mov dl, 37                       ;cursor position to col
        mov dh, 7                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r6p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r6p2

        mov ah,2                         ;to start the program
        mov dl, 7                       ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r6p3

        mov ah,2                         ;to start the program
        mov dl, 17                       ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s22
        mov bl, 0F0h                     ;attribute byte
        mov cx, 22                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p5

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 8                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p2

        mov ah,2                         ;to start the program
        mov dl, 7                       ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p3

        mov ah,2                         ;to start the program
        mov dl, 15                       ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p4

        mov ah,2                         ;to start the program
        mov dl, 25                       ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 0F0h                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r7p5

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 9                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p2

        mov ah,2                         ;to start the program
        mov dl, 7                       ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0F0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p3

        mov ah,2                         ;to start the program
        mov dl, 15                       ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p4

        mov ah,2                         ;to start the program
        mov dl, 25                       ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p5

        mov ah,2                         ;to start the program
        mov dl, 33                       ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r8p6

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 10                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p2

        mov ah,2                         ;to start the program
        mov dl, 7                       ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0f0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p3

        mov ah,2                         ;to start the program
        mov dl, 15                       ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p4

        mov ah,2                         ;to start the program
        mov dl, 23                       ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0f0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p5

        mov ah,2                         ;to start the program
        mov dl, 33                       ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r9p6

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 11                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p2

        mov ah,2                         ;to start the program
        mov dl, 9                       ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p3

        mov ah,2                         ;to start the program
        mov dl, 17                       ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 0f0h                     ;attribute byte
        mov cx, 14                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p3

        mov ah,2                         ;to start the program
        mov dl, 33                       ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r10p4

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 12                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p2

        mov ah,2                         ;to start the program
        mov dl, 9                       ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p3

        mov ah,2                         ;to start the program
        mov dl, 19                       ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p4

        mov ah,2                         ;to start the program
        mov dl, 29                       ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0f0h                     ;attribute byte
        mov cx, 6                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r11p5

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 13                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                       ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p2

        mov ah,2                         ;to start the program
        mov dl, 11                       ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 0f0h                     ;attribute byte
        mov cx, 2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p3

        mov ah,2                         ;to start the program
        mov dl, 21                       ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 0f0h                     ;attribute byte
        mov cx, 4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p4

        mov ah,2                         ;to start the program
        mov dl, 27                       ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0f0h                     ;attribute byte
        mov cx, 6                     ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r12p5

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 14                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                     ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p2

        mov ah,2                         ;to start the program
        mov dl, 23                       ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 0f0h                     ;attribute byte
        mov cx, 6                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r13p3

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 15                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                        ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r14p2

        mov ah,2                         ;to start the program
        mov dl, 39                       ;cursor position to col
        mov dh, 16                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 080h                     ;attribute byte
        mov cx, 6                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p2

        mov ah,2                         ;to start the program
        mov dl, 15                       ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx,2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p3

        mov ah,2                         ;to start the program
        mov dl, 25                       ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 080h                     ;attribute byte
        mov cx,6                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r15p4

        mov ah,2                         ;to start the program
        mov dl, 37                       ;cursor position to col
        mov dh, 17                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx,4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s8
        mov bl, 080h                     ;attribute byte
        mov cx, 8                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p2

        mov ah,2                         ;to start the program
        mov dl, 15                       ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p3

        mov ah,2                         ;to start the program
        mov dl, 25                       ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r16p4

        mov ah,2                         ;to start the program
        mov dl, 37                       ;cursor position to col
        mov dh, 18                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s4
        mov bl, 080h                     ;attribute byte
        mov cx, 4                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r17p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 19                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s16
        mov bl, 080h                     ;attribute byte
        mov cx, 16                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r17p2

        mov ah,2                         ;to start the program
        mov dl,27                       ;cursor position to col
        mov dh, 19                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s2
        mov bl, 080h                     ;attribute byte
        mov cx, 2                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r17p3

        mov ah,2                         ;to start the program
        mov dl,35                      ;cursor position to col
        mov dh, 19                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s6
        mov bl, 080h                     ;attribute byte
        mov cx, 6                        ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r18p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 20                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s18
        mov bl, 080h                     ;attribute byte
        mov cx, 18                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r18p2

        mov ah,2                         ;to start the program
        mov dl, 27                       ;cursor position to col
        mov dh, 20                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET s14
        mov bl, 080h                     ;attribute byte
        mov cx, 14                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h
	;r19p1

        mov ah,2                         ;to start the program
        mov dl, 3                       ;cursor position to col
        mov dh, 21                        ;cursor position to row
        int 10h

        mov ah, 9
        mov dx, OFFSET r0
        mov bl, 080h                     ;attribute byte
        mov cx, 38                      ;total number of space                                                                                                                                                 
        int 10h
        int 21h		                                                             	
                      

        mov ah, 4ch                      ;to terminate the program
        int 21h

end start
