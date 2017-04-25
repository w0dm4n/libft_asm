global start

section .text
start:
push    dword msg.len
push    dword msg
push    dword 1
mov     eax, 4
sub     esp, 4
int     0x80
add     esp, 16

push    dword 0
mov     eax, 1
sub     esp, 12
int     0x80

section .data

msg:    db      "Hello, world!", 10
.len:   equ     $ - msg









;   push    dword   14
;    push    dword   new_message
;    push    dword   1