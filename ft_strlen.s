section .text
global _ft_strlen

_ft_strlen:
push	      rbp
mov           rax, 0
while:    cmp byte[rdi + rax], 0  ;cmp arg[i], 0
          je  endwhile            ;si arg[i] == 0
          inc rax                 ;incremente index rax
          jmp while               ;relancement de la while
endwhile:
pop           rbp
ret