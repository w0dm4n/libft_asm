NAME	= 	libfts.a
SRC		=	ft_strlen.s \
			ft_puts.s	\
			ft_bzero.s

OBJ			= $(SRC:.s=.o)
CC			= ~/.brew/Cellar/nasm/2.12.02/bin/nasm -f macho64

$(NAME): $(OBJ) $(GEN)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@gcc main.c -L . -lfts -o test

all: $(NAME)

$(GEN):
%.o: %.s
	@~/.brew/Cellar/nasm/2.12.02/bin/nasm -f macho64 $<

clean:
		@rm -rf $(OBJ)

fclean: clean
		@rm -rf $(NAME)

re: fclean $(NAME)
