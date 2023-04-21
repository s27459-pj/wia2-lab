org 100h


mov ah, 02h  ; Ustawienie pozycji kursora
mov dh, 0Ch  ; Wiersz
mov dl, 27h  ; Kolumna
int 10h

mov ah, 02h
mov dl, 'C'
int 21h


mov ah, 00h
int 21h
