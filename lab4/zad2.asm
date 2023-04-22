org 100h


mov ah, 01h  ; Czytam znak z stdin do rejestru al
int 21h
mov bl, al  ; Zapisuję odczytany znak do bl, bo za chwilę al zostanie nadpisane

; Dodatkowy newline
mov ah, 02h
mov dl, 0Ah
int 21h

; Wielkie litery mają kody ASCII 41h-5Ah, a małe 61h-7Ah.

; Mniejsza niż 41h nie jest literą - błąd
cmp bl, 41h
jl err
; Większa od 5Ah może być małą literą albo nie być literą
cmp bl, 5Ah
jg else

; Jest w zakresie 41h-5Ah - wielka litera
mov ah, 09h
mov dx, upper
int 21h
jmp end

else:
; Mniejsza niż 61h nie jest literą, bo wiemy też że jest większa od 5Ah - błąd
cmp bl, 61h
jl err
; Większa od 7Ah nie jest literą - błąd
cmp bl, 7Ah
jg err

; Jest w zakresie 61h-7Ah - mała litera
mov ah, 09h
mov dx, lower
int 21h
jmp end

err:
mov ah, 09h
mov dx, error
int 21h

end:
mov ah, 00h
int 21h


upper db "wielka litera$"
lower db "mala litera$"
error db "error$"
