org 100h

; Infix: (12 + 8) - 2 * 6 = 20
; Postfix: 12 8 + 2 6 * -


push 12
push 8
; 12 + 8 = 20
pop ax
pop bx
add ax, bx
push ax

push 2
push 6
; 2 * 6 = 12
pop ax
pop bx
mul bx
push ax

; 20 - 12 = 8
pop ax
pop bx
sub bx, ax
push bx  ; Wynik


mov ah, 00h
int 21h
