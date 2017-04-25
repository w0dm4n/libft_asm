section .text
global start

start:
mov r8, 10
call jaidumalakomprendr

mov rax, 0x2000001      ; System call number for exit = 1
mov rdi, 0              ; Exit success = 0
syscall                 ; Invoke the kernel

jaidumalakomprendr:
dec r8
call wtf
cmp     r8, 0
jg      jaidumalakomprendr
ret

wtf:
mov rax, 0x2000004      ; System call write = 4
mov rdi, 1              ; Write to standard out = 1
mov rsi, hello_world    ; The address of hello_world string
mov rdx, 14             ; The size to write
syscall
ret   

section .data
hello_world     db      "Hello World!", 0x0a


;http://dustin.schultz.io/mac-os-x-64-bit-assembly-system-calls.html
;mov rax, 0x2000004      ; System call write = 4
;mov rdi, 1              ; Write to standard out = 1
;mov rsi, hello_world    ; The address of hello_world string
;mov rdx, 14             ; The size to write