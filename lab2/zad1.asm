org 100h     ; charakterystyka plików .COM, ładowanie od adresu 100h


mov ah, 02h  ; wypisanie litery na ekran
mov dl, 'A'  ; ustawienie litery do wypisania
int 21h
mov dl, 'g'
int 21h


mov ah, 00h  ; zakończenie działania programu
int 21h
