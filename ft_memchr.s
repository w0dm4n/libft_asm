section .text
global _ft_memchr

_ft_memchr:
push rbp
mov r11, rdi
mov r8, rdi ; first arg
mov r9, rsi ; second arg
mov r10, rdx ; third arg

mov rax, 0
call _loop
pop rbp
ret

_loop:
dec r10

mov cl, byte[r8]
cmp cl, byte[r9]
jz _found

inc r8
cmp r10, 0
jg _loop
ret

_found:
mov rax, r8
ret