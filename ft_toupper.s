section .text
global _ft_toupper
extern _ft_islower

_ft_toupper:
push rbp
call _ft_islower
cmp rax, 0
jz _wrong

mov rax, rdi
sub rax, 32
pop rbp
ret

_wrong:
mov rax, rdi
pop rbp
ret