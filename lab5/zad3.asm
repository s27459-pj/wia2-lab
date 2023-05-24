org 100h

; 2a + 2b - 2c
; 2 * 0x05 + 2 * 0x3B - 2 * 0x1C = 0x48

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Addition_and_Subtraction

mov ax, [a]
add ax, [a]
add ax, [b]
add ax, [b]
sub ax, [c]
sub ax, [c]
mov [y], ax


mov ah, 00h
int 21h


a dw 0x05
b dw 0x3B
c dw 0x1C
; Tutaj zapiszę wynik
y dw 0x0
