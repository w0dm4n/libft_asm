nasm -f macho ft_puts.s
gcc -m32 -c main.c
gcc -m32 ft_puts.o main.o -o ft_puts -Wl,-no_pie
