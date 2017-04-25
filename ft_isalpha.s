section .text
global _ft_isalpha

_ft_isalpha:
push rbp
cmp rdi, 0x61 ; a
jnge _maj

; is a or greater 

cmp rdi, 0x7a ; if > z
jg _wrong

mov rax, 1
pop rbp
ret

_maj:
cmp rdi, 0x41 ; A
jnge _wrong

; is A or greater

cmp rdi, 0x5a ; if > Z
jg _wrong

mov rax, 1
pop rbp
ret

_wrong:
mov rax, 0
pop rbp
ret  
