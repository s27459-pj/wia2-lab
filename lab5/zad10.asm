org 100h

; a / 2 + b / 3 + c / 4
; 0x10 / 2 + 0x09 / 3 + 0x0C / 4 = 0x08 + 0x03 + 0x03 = 0x0E

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [a]
mov dx, 0
mov bx, 2
div bx
mov cx, ax

mov ax, [b]
mov dx, 0
mov bx, 3
div bx
add cx, ax

mov ax, [c]
mov dx, 0
mov bx, 4
div bx
add cx, ax
mov [y], cx


mov ah, 00h
int 21h


a dw 0x10
b dw 0x09
c dw 0x0C
; Tutaj zapiszę wynik
y dw 0x0
