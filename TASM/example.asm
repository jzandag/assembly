.model     tiny
.code
org  100h         ; СОМ-file
start:
push cs         ;cs=ds
pop ds          

mov ah, 9       ;show message on screen
lea dx, msgpathrequest
int 21h

mov ah, 0Ah     ;write directory by keyboard
lea dx, path     
int 21h        

lea dx, pathstring 
push dx         
add dl, byte ptr[pathactual]    
xor al, al      
adc dh,al       
mov di, dx      
mov byte ptr[di], al

mov ah, 3Bh     ;change directory
pop dx          
int 21h
jc no_such_directory  

mov ah,1ah
mov dx,offset dta
int 21h

;find first file
mov ah,4Eh         
mov cx,2h           ; hidden files
lea dx,searchPath
int 21h
jc  no_more_files   ; if CF = 1 - files end

print:
mov ah,9h       
mov dx,offset dta + 1eh
int 21h

; new string
mov ah,9h
 mov dx,offset crlf
int 21h

mov ah,4Fh              ; find next file
mov dx,offset dta
int 21h
jc  no_more_files
mp print   

no_such_directory:
mov ah, 9       ;print message
lea dx, msgnosuchdir
int 21h
jmp no_more_files

no_more_files:                        
mov ah,9h
mov dx,offset message
int 21h

xor ax,ax
int 16h
mov ah,4ch
int 21h

msgpathrequest    db 0Ah, 0Dh, "Enter the full directory name: $"
msgnomorefiles  db 0Ah, 0Dh, "No files found in current directory$"
msgnosuchdir    db 0Ah, 0Dh, "No such directory$"
crlf db 0Dh,0Ah,'$' 
searchPath  db "*.*",0
dta     db 2ch dup (?)
            db "$"
message db 'Press any key...','$'
path        label byte 
pathlen     db 66
pathactual  db ?
pathstring  db 66 dup (?)
 end  start