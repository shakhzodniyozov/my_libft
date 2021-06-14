SRCS		=	ft_isalnum.c ft_isprint.c ft_memcmp.c ft_strjoin.c ft_putstr_fd.c ft_itoa.c \
				ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c ft_split.c ft_putendl_fd.c \
				ft_strchr.c ft_strlcpy.c ft_memcpy.c ft_strlcat.c ft_strnstr.c ft_putnbr_fd.c \
				ft_tolower.c ft_bzero.c ft_isascii.c ft_memccpy.c ft_strmapi.c ft_strtrim.c \
				ft_memmove.c  ft_strdup.c ft_strlen.c  ft_strrchr.c ft_putchar_fd.c \
				ft_toupper.c ft_calloc.c ft_isdigit.c ft_memchr.c ft_memset.c
OBJS		= $(SRCS:.c=.o)

HEADER_FILE = libft.h

CC			= gcc
RM			= rm -f
FLAGS		= -Wall -Wextra -Werror -I.

NAME		= libft.a

all: $(NAME)

%.o: %.c $(HEADER_FILE)
	gcc $(FLAGS) -c $< -o $@
$(NAME): $(OBJS)
	ar rcs $(NAME) $?

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean $(NAME)

.PHONY:	all clean fclean re

