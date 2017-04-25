section .text
global _ft_bzero

_ft_bzero:
push rbp
mov r8, rsi
call clear
pop rbp
ret

clear:
dec r8
mov byte[rdi + r8], 0
cmp     r8, 0
jg      clear
ret