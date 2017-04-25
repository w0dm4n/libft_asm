section .text
global _ft_isupper

_ft_isupper:
push rbp
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
