org 100h


loop:
; int 21h z ah=01h wypisuje od razu wpisane znaki,
; więc zajmiemy się tylko sprawdzaniem, czy wpisano 'Q'
mov ah, 01h
int 21h

; Jeśli podano 'Q' to kończymy pętlę
cmp al, 'Q'
je end
jmp loop


end:
mov ah, 00h
int 21h
