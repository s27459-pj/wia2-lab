org 100h

; (a / b) + c
; (0x10 / 0x02) + 0x4C = 0x08 + 0x4C = 0x54

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [a]
mov dx, 00h
mov bx, [b]
div bx
add ax, [c]
mov [y], ax


mov ah, 00h
int 21h


a dw 0x10
b dw 0x02
c dw 0x4C
; Tutaj zapiszę wynik
y dw 0x0

