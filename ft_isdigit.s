section .text
global _ft_isdigit

_ft_isdigit:
push rbp
cmp rdi, 0x30 ; 0
jnge _wrong

; is 0 or greater 

cmp rdi, 0x39 ; if > 9
jg _wrong

mov rax, 1
pop rbp
ret

_wrong:
mov rax, 0
pop rbp
ret  
