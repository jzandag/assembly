.model small
.stack 100h
.data

color  DB 223 ,10 ,13 , "$"
color1 DB 220 ,10 ,13 , "$"
.code
start:
           mov ax , 3                   ; automatic cls
           int 10h

           mov ax ,@data
           mov ds ,ax

           mov ah ,2
           mov dl ,1
           mov dh ,1

           mov ah ,9
           mov dx,offset color
           mov bl,016h
           mov cx, 1
           int 10h
           int 21h

           mov ah ,2
           mov dl ,1
           mov dh ,1

           mov ah ,9
           mov dx,offset color1
           mov bl,036h
           mov cx, 1
           int 10h
           int 21h

           mov ah ,4ch
           int 21h
end start

