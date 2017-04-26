section .text
global _ft_cat
extern _ft_bzero

_ft_cat:
push rbp

mov	rax, 0x2000003		    ; read system call
mov	rdi, rdi			    ; stdin
mov	rsi, buffer		        ; address for storage, declared in buffer
mov	rdx, 40096				; get bytes from the kernel's buffer
syscall

mov r8, rax ; read size

call _write_output

; clear buffer content
mov rsi, r8
mov rdi, buffer
call _ft_bzero
mov r8, 0
mov rax, 0

pop rbp
ret

_write_output:
mov rax, 0x2000004  
mov rdi, 1
mov rsi, buffer
mov rdx, r8
syscall
ret

section .bss
buffer:			resw 40098