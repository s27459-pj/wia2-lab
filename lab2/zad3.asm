org 100h


mov ah, 02h  ; Ustawienie pozycji kursora
mov dh, 00h  ; Wiersz
mov dl, 00h  ; Kolumna
int 10h

mov ah, 02h
mov dl, 'A'
int 21h


mov ah, 00h
int 21h
