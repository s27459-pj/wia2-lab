org 100h

mov ah, 0Ah  ; Odczytanie ciągu znaków z stdin
mov dx, buf  ; Znaki zapiszą się w miejscu 'buf'
int 21h

mov ah, 02h
mov dl, 0Ah  ; Dodatkowa nowa linia
int 21h

; http://www.ctyme.com/intr/rb-2563.htm
; [buf    ] Długość bufora
; [buf + 1] Długość odczytanego ciągu
; [buf + 2] Odczytane znaki
; Więc jeśli [buf+2] jest pierwszym znakiem, to [buf+4] jest trzecim
mov dl, [buf + 4]
int 21h


mov ah, 00h
int 21h


buf:
  ; Bufor ma 127 "slotów", bo pierwszy bajt to jego długość,
  ; więc nie będziemy trzymali w nim niczego konkretnego
  db 127
  ; Rezerwujemy 128 bajtów na nasz bufor
  resb 128
