org 100h


mov ah, 09h   ; wypisanie ciągu znaków na ekran
mov dx, name  ; name jest "wskaźnikiem" na string
int 21h


mov ah, 00h
int 21h

; Rzeczy po zakończeniu działania programu traktowane są jako statyczne dane

name db "Stefan Karczewski$"
; drugi parametr po nazwie etykiety to rozmiar bajtowy per komórka pamięci
; db - byte (1 bajt)
; dw - word (4 bajty)
; dd - double word (8 bajtów)
; String musi być zakończony znakiem dolara '$'
