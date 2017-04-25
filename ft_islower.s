section .text
global _ft_islower

_ft_islower:
push rbp
cmp rdi, 0x61 ; a
jnge _wrong

; is a or greater 

cmp rdi, 0x7a ; if > z
jg _wrong

mov rax, 1
pop rbp
ret

_wrong:
mov rax, 0
pop rbp
ret  
