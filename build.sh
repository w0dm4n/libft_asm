~/.brew/Cellar/nasm/2.12.02/bin/nasm -f macho64 ft_puts.s
~/.brew/Cellar/nasm/2.12.02/bin/nasm -f macho64 ft_strlen.s
gcc -c main.c
gcc ft_puts.o main.o ft_strlen.o -o ft_puts -Wl,-no_pie
