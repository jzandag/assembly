.MODEL SMALL
.386
.STACK 100H
.DATA

        A DB "ENTER YOUR PASSWORD: $"        ;STRING DECLARATIONS
        B DB 10,13,"WELCOME!$"
        C DB 10,13,"WRONG PASSWORD. PLEASE TRY AGAIN.$"
	D DB 10,13,"MENU$"
	J DB 10,13,"CHOICE:$"
	K DB 10,13,"1 - BACK$"
	L DB 10,13,"WRONG INPUT!$"
	N1 DB 10,13,"1 - MESSAGE1$"
	MESS1 DB 10,10,"HELLO$"
        EH DB ?
        FH DB ?
        GH DB ?

	M0 DB "                           ",10,13,"$"
	M2 DB " 1 - MESSAGES     ",10,13,"$"
	M3 DB " 2 - CONTACTS     ",10,13,"$"
	M4 DB "   3 - PHONE       ",10,13,"$"
	M5 DB "  4 - GALLERY     ",10,13,"$"
	M6 DB "   5 - EXIT       ",10,13,"$"
	
	Z1 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
	Z2 DB " ", 10, 13, "$"

.CODE


START: 
MAIN    PROC FAR

	MOV AX, 3
	INT 10H

	MOV AX, @DATA
	MOV DS, AX

        MOV AX, 03              ;CLEARS THE SCREEN
        INT 10H

        MOV AH, 9               ;STRING OUTPUT
        LEA DX, A               ;LEA-LOADS THE VARIABLE
        INT 21H
        MOV AH, 7               ;INPUT W/O ECHO
        INT 21H                 
        MOV BL, AL              ;BL=1ST CHARACTER
        MOV DL, '*'
        MOV AH, 2
        INT 21H
        MOV AH, 7               ;INPUT W/O ECHO
        INT 21H
        MOV CL, AL              ;CL-2ND CHARACTER
        MOV DL,'*'
        MOV AH, 2
        INT 21H
        MOV AH, 7               ;CHARACTER INPUT WITHOUT ECHO
        INT 21H
        MOV DH, AL              ;DH-3RD CHARACTER
        MOV DL,'*'
        MOV AH, 2
        INT 21H
        MOV AH, 7               ;INPUT WITHOUT ECHO
        INT 21H
        MOV EH, AL              ;BL=4TH CHARACTER
        MOV DL,'*'
        MOV AH, 2
        INT 21H
        MOV AH, 7               ;INPUT WITHOUT ECHO
        INT 21H
        MOV FH, AL              ;CL-5TH CHARACTER
        MOV DL,'*'
        MOV AH, 2
        INT 21H
        MOV AH, 7               ;CHARACTER INPUT WITHOUT ECHO
        INT 21H
        MOV GH, AL              ;DH-6TH CHARACTER
        MOV DL,'*'
        MOV AH, 2
        INT 21H
  
        CMP BL,'1'              ;COMPARES THE 6-INPUT CHARACTER
        CMP CL,'2'
        CMP DH,'3'
        CMP EH,'4'
        CMP FH,'5'
        CMP GH,'6'               ; IF NOT EQUAL JUMP TO INV
        JE _VAL                  ; IF EQUAL JUMP TO _VAL_
	JNE INV

     INV:
        MOV AH, 9               ;DISPLAY THE C
        LEA DX, C
        INT 21H
	MOV AH, 86H		;WAIT FUNCTION
	MOV CX, 15		; DECLARE CX = 1 SEC = 977MICROSEC
	MOV DX, CX		;LIPAT CX DX
	INT 15H			;INT NG WAIT
        JMP MAIN

_VAL	PROC	NEAR  
	

	
	MOV AX,3		;CLEAR SCREEN
	INT 10H


	MOV AX, @DATA
	MOV DS, AX
	
	
        MOV AH, 2               ; UP              
        MOV DL, 0
        MOV DH, 4
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 078H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2               ; DOWN              
        MOV DL, 0
        MOV DH, 10
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 078H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE UP             
        MOV DL, 0
        MOV DH, 0
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 1
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 2
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 3
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE DOWN             
        MOV DL, 0
        MOV DH, 11
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 12
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 13
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 14
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; BLUE              
        MOV DL, 0
        MOV DH, 15
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 011H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; EPAL             
        MOV DL, 0
        MOV DH, 16
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z2
        MOV BL, 000H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2              ; EPAL             
        MOV DL, 0
        MOV DH, 17
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z2
        MOV BL, 000H
        MOV CX, 80
        INT 10H
        INT 21H

        MOV AH, 2               ; W 1ST ROW             
        MOV DL, 2
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 6
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 10
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E            
        MOV DL, 13
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; L              
        MOV DL, 24
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; C              
        MOV DL, 35
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; 0              
        MOV DL, 46
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 57
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 65
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E END 1ST ROW             
        MOV DL, 68
        MOV DH, 5
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; W 2ND ROW             
        MOV DL, 2
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 6
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W               
        MOV DL, 10
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E             
        MOV DL, 13
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; L             
        MOV DL, 24
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; C              
        MOV DL, 35
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; O              
        MOV DL, 46
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; O              
        MOV DL, 54
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 57
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 4
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 63
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 4
        INT 10H
        INT 21H

        MOV AH, 2               ; E END 2ND ROW              
        MOV DL, 68
        MOV DH, 6
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W 3RD ROW             
        MOV DL, 2
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 6
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 10
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E              
        MOV DL, 13
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; L              
        MOV DL, 24
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; C              
        MOV DL, 35
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; O              
        MOV DL, 46
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; O              
        MOV DL, 54
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 57
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 61
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 65
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E END 3RD ROW              
        MOV DL, 68
        MOV DH, 7
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; W 4TH ROW             
        MOV DL, 2
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 6
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W              
        MOV DL, 10
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E              
        MOV DL, 13
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; L              
        MOV DL, 24
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; C              
        MOV DL, 35
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; O             
        MOV DL, 46
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; O              
        MOV DL, 54
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 57
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M              
        MOV DL, 65
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E END 4TH ROW             
        MOV DL, 68
        MOV DH, 8
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; W 5TH ROW             
        MOV DL, 2
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; E             
        MOV DL, 13
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; L             
        MOV DL, 24
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; C            
        MOV DL, 35
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; O           
        MOV DL, 46
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H

        MOV AH, 2               ; M             
        MOV DL, 57
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; M             
        MOV DL, 65
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH, 2               ; E END 5TH ROW            
        MOV DL, 68
        MOV DH, 9
        INT 10H

        MOV AH, 9
        MOV DX, OFFSET Z1
        MOV BL, 0DDH
        MOV CX, 10
        INT 10H
        INT 21H
		
		
	MOV AH, 86H		;WAIT FUNCTION
	MOV CX, 15		; DECLARE CX = 1 SEC = 977MICROSEC
	MOV DX, CX		;LIPAT CX DX
	INT 15H			;INT NG WAIT
	
		MOV AX,3		;CLEAR SCREEN
	INT 10H
	
	
	
	
        MOV AH,2                ;START BOX1
        MOV DL,5
        MOV DH,2
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,9
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,5
        MOV DH,10
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H			

		MOV AH,2                
        MOV DL,5
        MOV DH,11
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M2
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H				; END BOX 1	
		

        MOV AH,2			; START LOGO 1             
        MOV DL,6
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 16
        INT 10H
        INT 21H	

        MOV AH,2                
        MOV DL,6
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 3
        INT 10H
        INT 21H			

        MOV AH,2                
        MOV DL,19
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 3
        INT 10H
        INT 21H					

        MOV AH,2                
        MOV DL,6
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H		

        MOV AH,2                
        MOV DL,9
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 2
        INT 10H
        INT 21H			

        MOV AH,2                
        MOV DL,17
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 2
        INT 10H
        INT 21H			

        MOV AH,2                
        MOV DL,21
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,6
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H		

        MOV AH,2                
        MOV DL,11
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,15
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 2
        INT 10H
        INT 21H	

        MOV AH,2                
        MOV DL,21
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H	

        MOV AH,2                
        MOV DL,6
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,13
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 2
        INT 10H
        INT 21H			

        MOV AH,2                
        MOV DL,21
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,6
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H	

        MOV AH,2                
        MOV DL,21
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H	

        MOV AH,2                
        MOV DL,6
        MOV DH,9
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 16
        INT 10H
        INT 21H			;END LOGO 1

        MOV AH,2                ; START BOX 2               
        MOV DL,28
        MOV DH,2
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,9
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,10
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,28
        MOV DH,11
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M3
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H			;END BOX 2

		MOV AH,2		;START LOGO 2                
        MOV DL,32
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 12
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,30
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,43
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,32
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,43
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,30
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,43
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,32
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,43
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,30
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,43
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 1
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,32
        MOV DH,9
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 12
        INT 10H
        INT 21H			;END LOGO 2		


        MOV AH,2                ; START BOX 3              
        MOV DL,51
        MOV DH,2
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,5
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,8
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,9
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,10
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,51
        MOV DH,11
        INT 10H

        MOV AH,	9
        MOV DX, OFFSET M4
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H			;END BOX 3

		MOV AH,2  		;START LOGO 3              
        MOV DL,53
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

		MOV AH,2  		          
        MOV DL,58
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

	MOV AH,2  		        
        MOV DL,63
        MOV DH,3
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H


	MOV AH,2  		        
        MOV DL,53
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H


	MOV AH,2  		        
        MOV DL,58
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

	MOV AH,2  		        
        MOV DL,63
        MOV DH,4
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H


	MOV AH,2  		        
        MOV DL,53
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H

	MOV AH,2  		        
        MOV DL,58
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H			

	MOV AH,2  		        
        MOV DL,63
        MOV DH,6
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H	

	MOV AH,2  		        
        MOV DL,53
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H		

	MOV AH,2  		        
        MOV DL,58
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H	

	MOV AH,2  		        
        MOV DL,63
        MOV DH,7
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H	

	MOV AH,2  		        
        MOV DL,58
        MOV DH,9
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H	

	MOV AH,2  		        
        MOV DL,58
        MOV DH,10
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 000H
        MOV CX, 4
        INT 10H
        INT 21H			;END LOGO 3										


	MOV AH,2                ; START BOX 4             
        MOV DL,17
        MOV DH,14
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,15
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,16
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,17
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,18
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,19
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,20
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,21
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,22
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,17
        MOV DH,23
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M5
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H			;END BOX 4

	MOV AH,2                ; START BOX 5            
        MOV DL,40
        MOV DH,14
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,15
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,16
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,17
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,18
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,19
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,20
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,21
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,22
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,40
        MOV DH,23
        INT 10H

        MOV AH,9 
        MOV DX, OFFSET M6
        MOV BL, 070H
        MOV CX, 18
        INT 10H
        INT 21H			;END BOX 5

	MOV AH,2                ; START LOGO 5            
        MOV DL,42
        MOV DH,15
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,54
        MOV DH,15
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,44
        MOV DH,16
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,52
        MOV DH,16
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,46
        MOV DH,17
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,50
        MOV DH,17
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,48
        MOV DH,18
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,46
        MOV DH,19
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,50
        MOV DH,19
        INT 10H

        MOV AH,9
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H

        MOV AH,2                
        MOV DL,44
        MOV DH,20
        INT 10H

        MOV AH,9 
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H			

        MOV AH,2                
        MOV DL,52
        MOV DH,20
        INT 10H

        MOV AH,9 
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H		

	MOV AH,2                
        MOV DL,42
        MOV DH,21
        INT 10H

        MOV AH,9 
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H	

        MOV AH,2                
        MOV DL,54
        MOV DH,21
        INT 10H

        MOV AH,9 
        MOV DX, OFFSET M0
        MOV BL, 040H
        MOV CX, 2
        INT 10H
        INT 21H				;END LOGO 5			   

	
	MOV AH,2		;NEW LINE
	MOV DL, 10
	INT 21H
	MOV DL, 13
	INT 21H
	MOV AH, 9		;DISPLAY CHOICE:???			
	LEA DX, J
	INT 21H
            

_VAL endp

MENU1:
	MOV AH, 1
	INT 21H
	MOV GH, AL
	CMP GH, '1'
	JNE MENU2
	CALL MESSAGING		;CALL FUNCTION 'MESSAGING'
	MOV AH, 1
	INT 21H
	CMP AL, '1'
    JE _VAL
	
MENU2:
	CMP GH, '2'
	JNE MENU3
	CALL PHONEBOOK		;CALL FUNCTION 'PHONEBOOK'
	MOV AH, 1
	INT 21H
    CMP AL, '1'
	JE _VAL

MENU3:
	CMP GH, '3'
	JNE MENU4
	CALL DIALER		;CALL FUNCTION 'DIALER'
	MOV AH, 1
	INT 21H
	CMP AL, '1'
	JNE OOR
	JMP _VAL
OOR:
MENU4:
	CMP GH, '4'
	JNE OOR1
	CALL GALLERY		;CALL FUNCTION 'GALLERY'
	MOV AH, 1
	INT 21H
	CMP AL, '1'
	JNE OOR1
	JMP _VAL

OOR1:
	CMP GH, '5'
	JE EXIT
	MOV AH,9		;IF CHOICE IS NOT FROM 1-5
	LEA DX, L
	INT 21H
	MOV AH, 86H		;WAIT FUNCTION
	MOV CX, 15		; DECLARE CX = 1 SEC = 977MICROSEC
	MOV DX, CX		;LIPAT CX DX
	INT 15H			;INT NG WAIT
    JMP _VAL

EXIT: INT 20H              ;END OF PROGRAM

MAIN ENDP                  ;END MAIN PROCEDURE
	
MESSAGING PROC NEAR
	MOV AX, 03              ;CLEARS THE SCREEN
    INT 10H
	MOV AH, 9
	LEA DX, K
	INT 21H
	MOV AH, 9		
	LEA DX, J
	INT 21H

	RET

	
MESSAGING ENDP

PHONEBOOK PROC NEAR
	MOV AX, 03              ;CLEARS THE SCREEN
    INT 10H
	MOV AH, 9
	LEA DX, K
	INT 21H
	MOV AH, 9		
	LEA DX, J
	INT 21H


	RET

	
PHONEBOOK ENDP

DIALER PROC NEAR
	MOV AX, 03              ;CLEARS THE SCREEN
        INT 10H
	MOV AH, 9
	LEA DX, K
	INT 21H
	MOV AH, 9		
	LEA DX, J
	INT 21H


	RET

	
DIALER ENDP

GALLERY PROC NEAR
	MOV AX, 03              ;CLEARS THE SCREEN
        INT 10H
	MOV AH, 9
	LEA DX, K
	INT 21H
	MOV AH, 9		
	LEA DX, J
	INT 21H


	RET

GALLERY ENDP

END START