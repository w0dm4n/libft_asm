section .text
global _ft_isprint

_ft_isprint:
push rbp
cmp rdi, 0x20 ; 32
jnge _wrong

; is 32 or greater 

cmp rdi, 0x7e ; 126
jg _wrong

mov rax, 1
pop rbp
ret

_wrong:
mov rax, 0
pop rbp
ret  
