section .text
global _ft_strcat
extern _ft_puts
extern _ft_strlen

_ft_strcat:
push rbp
mov r8, rdi ; first arg
call _ft_strlen
mov r9, rax ; first arg len

mov r12, rsi ; second arg
mov rdi, rsi
call _ft_strlen
mov r10, rax ; second arg len

call _copy

mov rax, r8
pop rbp
ret

_goto:
dec rax
inc     rdi
cmp     rax, 0
jg      _goto
ret

_add_data:
inc r13

mov rcx, 1 ; src len for movsb;
mov rsi, r12 ; src for movsb
mov rdi, r11 ; dest for movsb
movsb

inc r11
inc r12
cmp r10, r13
jg _add_data
ret

_copy:
mov r11, r8 ; first arg + len first
mov rax, r9
mov rdi, r11

call _goto

mov r11, rdi

cmp r9, 0
jz _if_empty

; if first arg not empty
mov r13, 0
call _add_data
mov qword[r11], 0

ret

_if_empty:
mov r13, 0
dec r11
call _add_data
mov qword[r11], 0
ret