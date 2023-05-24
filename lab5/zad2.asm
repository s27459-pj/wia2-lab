org 100h

; a * b + c
; 0x05 * 0x3B + 0x4C = 0x173

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Multiplication

mov ax, [b]
mul word [a]
add ax, [c]
mov [y], ax


mov ah, 00h
int 21h


a dw 0x05
b dw 0x3B
c dw 0x4C
; Tutaj zapiszę wynik
y dw 0x0
