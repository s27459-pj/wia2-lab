org 100h

; Infix: a / b + c
; Postfix: a b / c +
; Podstawione: 8 / 2 + 5 = 9


push word [a]
push word [b]
; 8 / 2 = 4
; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic#Division
; Nasz dzielnik (bx) ma długość 2 bajtów, więc będziemy dzielić ax:dx
; Ustawiam dx na zero, żeby uniknąć błędów
pop bx
pop ax
mov dx, 00h
div bx
push ax

push word [c]
; 4 + 5 = 9
pop ax
pop bx
add ax, bx
push ax  ; Wynik


mov ax, 00h
int 21h


a dw 8
b dw 2
c dw 5
