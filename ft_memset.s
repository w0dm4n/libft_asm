section .text
global _ft_memset

_ft_memset:
push rbp
mov r8, rdi ; first arg
mov r9, rsi ; second arg
mov r10, rdx ; third arg

cmp r10, 0 ; arg is supposed to already be unsigned but who knows ? ;P
jz _error

call _loop
mov rax, rdi
pop rbp
ret

_loop:
dec r10

mov qword[r8], rsi

inc r8
cmp r10, 0
jg _loop
ret

_error:
mov rax, rdi
pop rbp
ret