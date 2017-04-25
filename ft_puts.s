section .text
global _ft_puts
extern _ft_strlen
_ft_puts:
push    rbp
call    _ft_strlen
mov     r8, rax
    mov     rax, 0x2000004
    mov     rsi, rdi
    mov     rdi, 1
    mov     rdx, r8
    syscall  
pop     rbp
ret