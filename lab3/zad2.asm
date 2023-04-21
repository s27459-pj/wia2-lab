org 100h

mov ah, 09h
mov dx, string
int 21h

; dodatkowy newline po wypisaniu `string`
mov ah, 02h
mov dl, 0Ah
int 21h

; na miejsce czwartego znaku wstawiam '$'
mov byte [string + 3], '$'

; ponowne wypisanie całego stringa, ale tym razem '$' kończący go jest wcześniej,
; czyli będzie wyglądał mniej-więcej tak:
; "som$thing something testing stuff$"
mov ah, 09h
mov dx, string
int 21h


mov ah, 00h
int 21h


string db "something something testing stuff$"
