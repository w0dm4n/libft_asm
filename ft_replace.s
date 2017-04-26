section .text
global _ft_replace
extern _ft_strlen

_ft_replace:
push rbp
mov r8, rdi ; first arg
mov r9, rsi ; second arg
mov r10, rdx ; third arg
call _ft_strlen
mov r11, rax ; len rdi

while:    cmp r11, 0 
          je  endwhile    
          call _do
          jmp while              
endwhile:
pop rbp
ret

_do:
dec r11

mov cl, byte[r8]
cmp cl, byte[r9]
jz _found
inc r8
ret


_found:

mov rcx, 1 ; src len for movsb;
mov rsi, r10 ; src for movsb
mov rdi, r8 ; dest for movsb
movsb
inc r8
ret
