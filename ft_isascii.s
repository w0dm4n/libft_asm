section .text
global _ft_isascii

_ft_isascii:
push rbp
cmp rdi, 0x0 ; 0
jnge _wrong

; is 0 or greater 

cmp rdi, 0x7f ; 127
jg _wrong

mov rax, 1
pop rbp
ret

_wrong:
mov rax, 0
pop rbp
ret  
