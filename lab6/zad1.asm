org 100h

; Infix: a * b + c
; Postfix: a b * c +
; Podstawione: 2 * 3 + 4 = 10


push word [a]
push word [b]
; 2 * 3 = 6
pop ax
pop bx
mul bx
push ax

push word [c]
; 6 + 4 = 10
pop ax
pop bx
add ax, bx
push ax  ; Wynik


mov ax, 00h
int 21h


a dw 2
b dw 3
c dw 4
