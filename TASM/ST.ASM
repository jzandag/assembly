.model small
.stack 100h
.data

x db "Thanks Sir Tolitz I'm learning assemblylanguage",10,13,"$"
.code

start:

mov ax,@data
mov ds,ax

mov ah, 9
mov dx, offset x
int 21h

mov ax, 4ch
int 21h

end start
