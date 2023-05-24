org 100h

; Infix: 2a + 2b - 2c
; Postfix: 2 a * 2 b * + 2 c * -
; Podstawione: 2 * 2 + 2 * 3 - 2 * 4 = 2


push 2
push word [a]
; 2 * 2 = 4
pop ax
pop bx
mul bx
push ax

push 2
push word [b]
; 2 * 3 = 6
pop ax
pop bx
mul bx
push ax

; 4 + 6 = 10
pop ax
pop bx
add ax, bx
push ax

push 2
push word [c]
; 2 * 4 = 8
pop ax
pop bx
mul bx
push ax

; 10 - 8 = 2
pop ax
pop bx
sub bx, ax
push bx ; Wynik


mov ax, 00h
int 21h


a dw 2
b dw 3
c dw 4
