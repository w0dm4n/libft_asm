section .text
global _ft_tolower
extern _ft_isupper

_ft_tolower:
push rbp
call _ft_isupper
cmp rax, 0
jz _wrong

mov rax, rdi
add rax, 32
pop rbp
ret

_wrong:
mov rax, rdi
pop rbp
ret