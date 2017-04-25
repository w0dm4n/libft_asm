;Les registres principaux sont : EAX, EBX, ECX, EDX, EDI, ESI, EBP, ESP, EIP et les Flags.
;Ce sont des petites zones de stockage logées dans le processeur auxquels il a un accès très rapide (beaucoup plus rapide qu'en mémoire)
;Ils ont tous une taille de 32 bits (4 bytes).
;EAX, EBX, ECX et EDX registres de travail. La partie basse (les 16bits de poids fort) de chacun d'eux peut être utilisée directement mais reste une partie du registre de 32bits, c'est à dire que s'il l'on modifie AX (la partie basse de EAX), on modifiera EAX. En plus de cela, la partie ;;;;basse peut être de nouveau séparée en 2 parties de 8bits (la partie haute AH et la partie basse AL pour AX, BH et BL pour BX, ...). De nouveau si l'on modifie l'une des 2 parties, c'est tout le registre qui est modifié (AX est modifié donc EAX aussi). 

;ESP désigne toujours le sommet de la pile
;BYTE 2
;WORD 16
;DWORD 32
;EIP = address of the current instruction
;MOV = copies data from one location to another
;SUB = substract the content from src to dest
;JG = jump if greater
section .text
global _main

_syscall:
    int     0x80
    ret

_main:
    jmp slt ; jmp on the function slt (change EIP on adress designed by slt)
slt:
    push    dword   len ; set 32bit len of message on the stack
    push    dword   message ; set 32bit message on the stack
    push    dword   0x1 ; set fd stdout
    mov     eax,    0x4 ; call sys_write
    call    _syscall
    add     esp,    0x12 ; clean the stack (write call * 3)
        
    push    dword   len_2
    push    dword   message_suite
    push    dword   0x1
    mov     eax,    0x4 ; write call
    call    _syscall
    add     esp,    0x12

    push    dword   0x0 ; exit code
    mov     eax,    0x1 ; call sys_exit
    call    _syscall

section .data
message:  db  "Salut"
len       equ $ - message

message_suite: db " tout le monde"
len_2   equ $ - message_suite