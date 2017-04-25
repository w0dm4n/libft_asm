global start
section .data

query_string:		db	"Enter a character:  "
query_string_len:	equ	$ - query_string
out_string:			db	"You have input:  "
out_string_len:		equ	$ - out_string

section .bss

in_char:			resw 4

section .text

start:

mov	rax, 0x2000004	 	; put the write-system-call-code into register rax
mov	rdi, 1				; tell kernel to use stdout
mov	rsi, query_string	; rsi is where the kernel expects to find the address of the message
mov	rdx, query_string_len	; and rdx is where the kernel expects to find the length of the message 
syscall

; read in the character
mov	rax, 0x2000003		; read system call
mov	rdi, 0				; stdin
mov	rsi, in_char		; address for storage, declared in section .bss
mov	rdx, 2				; get 2 bytes from the kernel's buffer (one for the carriage return)
syscall

; show user the output
mov	rax, 0x2000004		; write system call
mov	rdi, 1				; stdout
mov	rsi, out_string
mov	rdx, out_string_len
syscall

mov	rax, 0x2000004		; write system call
mov	rdi, 1				; stdout
mov	rsi, in_char
mov	rdx, 2				; the second byte is to apply the carriage return expected in the string
syscall

; exit system call
mov	rax, 0x2000001		; exit system call
xor     rdi, rdi
syscall
