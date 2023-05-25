org 100h

; a * (b + c)
; 0x10 * (0x02 + 0x06) = 0x10 * 0x08 = 0x80

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division

mov ax, [b]
add ax, [c]
mul word [a]
mov [y], ax


mov ah, 00h
int 21h


a dw 0x10
b dw 0x02
c dw 0x06
; Tutaj zapiszę wynik
y dw 0x0
