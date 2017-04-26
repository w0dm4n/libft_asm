NAME	= 	libfts.a
SRC		=	ft_strlen.s 	\
			ft_puts.s		\
			ft_bzero.s		\
			ft_strcat.s		\
			ft_strdup.s		\
			ft_isalpha.s	\
			ft_isdigit.s	\
			ft_isalnum.s	\
			ft_isascii.s	\
			ft_isprint.s	\
			ft_toupper.s	\
			ft_tolower.s	\
			ft_isupper.s	\
			ft_islower.s	\
			ft_memset.s		\
			ft_memcpy.s		\
			ft_cat.s
OBJ			= $(SRC:.s=.o)
CC			= ~/.brew/Cellar/nasm/2.12.02/bin/nasm -f macho64

$(NAME): $(OBJ) $(GEN)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@gcc main.c -L . -lfts -o test -Wl,-no_pie

all: $(NAME)

$(GEN):
%.o: %.s
	@~/.brew/Cellar/nasm/2.12.02/bin/nasm -f macho64 $<

clean:
		@rm -rf $(OBJ)

fclean: clean
		@rm -rf $(NAME)

re: fclean $(NAME)
