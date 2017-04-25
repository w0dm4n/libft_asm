section .text
global _ft_strlen

_ft_strlen:
push rbp
mov rax, 0 ; set rax qui sert de valeur de retour a 0
pxor xmm0, xmm0 ; reinitialise la pile (remet tout a 0)
call get_length ; appel la fonction get_length
pop rbp
ret ; retourne

get_length:
inc rax ; incremente de 1 rax
movdqu xmm1, [rdi + rax] ; met la valeur de rdi (argument passé) + l'index courant (rax) dans le byte xmm1 
pcmpeqb   xmm1, xmm0 ; compare le byte xmm1, xmm0 pour vérifier si != 0
pmovmskb  ecx, xmm1 ; converti le byte (xmm1) en decimal dans ecx
cmp ecx, 0 ; si ecx > 0
jz get_length ; rappel la fonction
bsf ecx, ecx ; boucle sur le nombre de fois qu'on a set ecx
add rax, rcx ; ajoute rcx (le compteur de boucle de ecx) dans rax qui est l'index courant
ret