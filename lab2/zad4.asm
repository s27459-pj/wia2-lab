org 100h


mov ah, 01h  ; Odczytanie znaku z stdin, wynik będzie na al
int 21h
mov bl, al   ; Zapisanie wartości z al na bl, ponieważ al będzie nadpisane przez wypisanie znaku

mov ah, 02h
mov dl, ' '  ; Dodatkowa spacja
int 21h

mov dl, bl   ; Wypisanie odczytanej na początku wartości
int 21h


mov ah, 00h
int 21h
