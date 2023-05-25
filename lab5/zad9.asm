org 100h

; a * (b + a / c)
; 0x10 * (0x04 + 0x10 / 0x02) = 0x10 * (0x04 + 0x08) = 0x10 * 0x0C = 0xC0

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [a]
mov dx, 00h
mov bx, [c]
div bx
add ax, [b]
mul word [a]
mov [y], ax


mov ah, 00h
int 21h


a dw 0x10
b dw 0x04
c dw 0x02
; Tutaj zapiszę wynik
y dw 0x0
