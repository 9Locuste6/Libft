# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gorban <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/09 16:07:26 by gorban            #+#    #+#              #
#    Updated: 2019/10/15 21:57:06 by gorban           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c \
		ft_memcmp.c ft_strlen.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c \
		ft_strlcpy.c ft_strlcat.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

SRCB = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c \
	   ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c \
	   ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c ft_memcat_bonus.c \
	   ft_rev_int_tab_bonus.c ft_sort_bonus.c ft_sqrt_bonus.c ft_swap_bonus.c \
	   ft_ultoa_base_bonus.c ft_intlen_bonus.c ft_freeturn_bonus.c \
	   get_next_line_bonus.c

OBJS = $(SRC:.c=.o)

OBJB = $(SRCB:.c=.o)

CC = gcc
CFLAGS = -c -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $(OBJS)

clean:
	rm -f $(OBJS) $(OBJB)

fclean:	clean
	rm -f $(NAME)

re: fclean all

bonus: $(OBJB) $(OBJS)
	ar -rc $(NAME) $(OBJS) $(OBJB)

.PHONY = all clean fclean re bonus
