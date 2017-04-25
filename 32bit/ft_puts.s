section .text
global _ft_puts

_syscall:
    int     0x80
    ret

_ft_puts:
    push eax ; push data
    cmp eax, 0 ; if greater then 0
    jg print_func ; jump if cmp ok 

print_func:
    push    dword   len ; set 32bit len of message on the stack
    push    dword   message ; set 32bit message on the stack
    push    dword   0x1 ; set fd stdout
    mov     eax,    0x4 ; call sys_write
    call _syscall

    add     esp,    0x12 ; clean the stack (write call * 3)
    
    push    dword   0x0 ; exit code
    mov     eax,    0x1 ; call sys_exit
    call    _syscall

section .data
message: db "Ok"
len     equ $ - message