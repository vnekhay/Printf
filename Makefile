# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vnekhay <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/16 03:45:49 by vnekhay           #+#    #+#              #
#    Updated: 2018/04/22 03:44:50 by vnekhay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = 	srcs/ft_printf.c \
        srcs/ft_isdigit.c \
        srcs/ft_memset.c \
        srcs/ft_strchr.c \
        srcs/ft_strlen.c \
        srcs/manage_number.c \
        srcs/manage_int.c \
        srcs/manage_str.c \
        srcs/manage_char.c \
        srcs/manage_type.c \
        srcs/adding_width.c \
        srcs/throw_in_buf.c \
        srcs/hunting_for_qualifiers.c \
        srcs/manage_ouxp_types.c \
        srcs/default_params.c


OBJECT = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJECT)
	ar rc $(NAME) $(OBJECT)
	ranlib $(NAME)

%.o:%.c
	gcc -Wall -Wextra -Werror -o $@ -c $< -I libft

clean:
	rm -f $(OBJECT)
	find . -name ".*.sw[pon]" -exec rm -f {} +

fclean: clean
	rm -f $(NAME)

re: fclean all
