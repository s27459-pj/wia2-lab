org 100h

; a ^ 2 + 2 * b + c
; 0x08 * 0x08 + 2 * 0x02 + 0x06 = 0x4A

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [a]
mul ax
add ax, [b]
add ax, [b]
add ax, [c]
mov [y], ax


mov ah, 00h
int 21h


a dw 0x08
b dw 0x02
c dw 0x06
; Tutaj zapiszę wynik
y dw 0x0
