org 100h


mov ah, 01h  ; Czytam znak z stdin do rejestru al
int 21h
mov bl, al  ; Zapisuję odczytany znak do bl, bo za chwilę al zostanie nadpisane

; Dodatkowy newline
mov ah, 02h
mov dl, 0Ah
int 21h

; Jeśli będzie większy niż ‘_’ (5Fh) to wydrukuje ‘>’,
; jeśli mniejszy to wydrukuje ‘<’,
; jeśli równy, to wydrukuje ‘==’.

cmp bl, 5Fh
jg bigger
jl smaller
je equal

bigger:
; Znak do wypisania zapisuję w dh,
; bo do dl będę wrzucał jeszcze inne dane (newline)
mov ah, 02h
mov byte dl, '>'
jmp print

smaller:
mov ah, 02h
mov byte dl, '<'
jmp print

equal:
; Dla równych chcę wypisać "==", więc używam int 21, ah=09h
mov ah, 09h
mov dx, equals
jmp print

print:
int 21h


mov ah, 00h
int 21h


equals db "==$"
