org 100h

; a / (b + c)
; 0x20 / (0x02 + 0x06) = 0x20 / 0x08 = 0x04

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [b]
add ax, [c]
mov bx, ax
mov ax, [a]
mov dx, 00h
div bx
mov [y], ax


mov ah, 00h
int 21h


a dw 0x20
b dw 0x02
c dw 0x06
; Tutaj zapiszę wynik
y dw 0x0
