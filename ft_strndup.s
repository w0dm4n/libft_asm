section .text
global _ft_strndup
extern _malloc

_ft_strndup:
push rbp
mov r14, rdi ; first arg

mov r15, rsi ; len first arg
mov rcx, rsi ; alloc length of arg
call _malloc
test rax, rax
jz   _fail_exit
mov r8, rax ; new
mov r10, r15 ; set len of first arg in r10
call _copy_data

pop rbp
ret

_copy_data:
dec r10

mov rcx, 1 ; src len for movsb;
mov rsi, r14 ; src for movsb
mov rdi, r8 ; dest for movsb
movsb

inc r8
inc r14
cmp r10, 0
jg _copy_data
ret

_fail_exit:
mov rax, 0x2000004      ; System call write = 4
mov rdi, 1              ; Write to standard out = 1
mov rsi, error    ; The address of hello_world string
mov rdx, len             ; The size to write
syscall
pop rbp
ret

section .data
error: db  "Malloc allocation failed !", 10
len:   equ $ - error