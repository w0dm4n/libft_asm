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

_print_me:
mov rax, 0x2000004      
mov rdi, 1           
mov rsi, r12
mov rdx, 1             
syscall

_add_data:
inc r13

movsb
;movsb byte[r11], byte[r12]
;mov byte[r11], 'U'

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


mov r13, 0
call _add_data

ret

;Les six premiers param`etres entiers sont pass´es dans rdi , rsi ,
;rdx, rcx, r8 et r9 dans cet ordre. Les autres sont pass´es par la
;pile
;https://github.com/nikAizuddin/study_x86asm_linux/blob/master/simple_string_ops/simple_string_ops.asm