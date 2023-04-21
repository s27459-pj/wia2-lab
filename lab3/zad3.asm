org 100h

; Odczytanie ciągu znaku z stdin
mov ah, 0Ah
mov dx, buf
int 21h

; dodatkowy newline
mov ah, 02h
mov dl, 0Ah
int 21h

; http://www.ctyme.com/intr/rb-2563.htm
; [buf    ] Długość bufora
; [buf + 1] Długość odczytanego ciągu
; [buf + 2] Odczytane znaki

mov bx, buf         ; Zapisuję adres `buf` do bx
add bx, 2           ; Zwiększam adres o 2, aby wskazywał na pierwszy znak ciągu
mov cl, [buf + 1]   ; Zapisuję długość odczytanego ciągu do cl
add bx, cx          ; Zwiększam adres o długość odczytanego ciągu
mov byte [bx], '$'  ; Wstawiam '$' po ostatnim znaku ciągu

; Wypisanie ciągu znaków aby sprawdzić czy poprawnie wstawiłem '$' na jego końcu
mov ah, 09h
mov dx, buf  ; Zapisuję adres `buf` do bx
add dx, 2    ; Zwiększam adres o 2, aby wskazywał na pierwszy znak ciągu
int 21h


mov ah, 00h
int 21h


buf:
  db 127
  resb 128
