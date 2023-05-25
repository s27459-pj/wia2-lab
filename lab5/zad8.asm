org 100h

; 2 * a * (b / 2 * c)
; 2 * 0x08 * (0x04 / 2 * 0x06) = 0x10 * 0x0C = 0xC0

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [b]
mov dx, 00h
mov bx, 2
div bx
mul word [c]
mov bx, ax
mov ax, [a]
add ax, [a]
mul bx
mov [y], ax


mov ah, 00h
int 21h


a dw 0x08
b dw 0x04
c dw 0x06
; Tutaj zapiszę wynik
y dw 0x0
