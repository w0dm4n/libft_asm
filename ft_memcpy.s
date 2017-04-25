section .text
global _ft_memcpy

_ft_memcpy:
push rbp
mov r11, rdi ; pointer save rdi
mov r8, rdi ; first arg
mov r9, rsi ; second arg
mov r10, rdx ; third arg

cmp r10, 0 ; arg is supposed to already be unsigned but who knows ? ;P
jz _error

call _loop
mov rax, r11
pop rbp
ret

_loop:
dec r10

mov rcx, 1 ; src len for movsb;
mov rsi, r9 ; src for movsb
mov rdi, r8 ; dest for movsb
movsb

inc r8
inc r9
cmp r10, 0
jg _loop
ret

_error:
mov rax, r11
pop rbp
ret