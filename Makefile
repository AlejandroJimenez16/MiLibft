# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alejandj <alejandj@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/22 12:50:32 by alejandj          #+#    #+#              #
#    Updated: 2025/01/26 13:06:32 by alejandj         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Werror -Wextra

SRC =	src/libft/ft_isalpha.c		\
		src/libft/ft_isdigit.c		\
		src/libft/ft_isalnum.c		\
		src/libft/ft_isascii.c		\
		src/libft/ft_isprint.c		\
		src/libft/ft_strlen.c		\
		src/libft/ft_memset.c		\
		src/libft/ft_bzero.c		\
		src/libft/ft_memcpy.c		\
		src/libft/ft_memmove.c		\
		src/libft/ft_strlcpy.c		\
		src/libft/ft_strlcat.c		\
		src/libft/ft_toupper.c		\
		src/libft/ft_tolower.c		\
		src/libft/ft_strchr.c		\
		src/libft/ft_strrchr.c		\
		src/libft/ft_strncmp.c		\
		src/libft/ft_memchr.c		\
		src/libft/ft_memcmp.c		\
		src/libft/ft_strnstr.c		\
		src/libft/ft_atoi.c			\
		src/libft/ft_calloc.c		\
		src/libft/ft_strdup.c		\
		src/libft/ft_substr.c		\
		src/libft/ft_strjoin.c		\
		src/libft/ft_strtrim.c		\
		src/libft/ft_split.c		\
		src/libft/ft_itoa.c			\
		src/libft/ft_strmapi.c		\
		src/libft/ft_striteri.c		\
		src/libft/ft_putchar_fd.c	\
		src/libft/ft_putstr_fd.c	\
		src/libft/ft_putendl_fd.c	\
		src/libft/ft_putnbr_fd.c	\
		src/libft/ft_lstnew_bonus.c			\
		src/libft/ft_lstadd_front_bonus.c	\
		src/libft/ft_lstsize_bonus.c		\
		src/libft/ft_lstlast_bonus.c		\
		src/libft/ft_lstadd_back_bonus.c	\
		src/libft/ft_lstdelone_bonus.c		\
		src/libft/ft_lstclear_bonus.c		\
		src/libft/ft_lstiter_bonus.c		\
		src/libft/ft_lstmap_bonus.c			\
		src/printf/ft_printf.c				\
		src/printf/ft_putchar.c				\
		src/printf/ft_putstr.c				\
		src/printf/ft_putnbr_dec.c			\
		src/printf/ft_putnbr_hex.c			\
		src/printf/ft_putnbr_unsigned.c		\
		src/printf/ft_print_pointer.c		\
		src/printf/ft_strlen.c				\
		src/get_next_line/get_next_line.c				\
		src/get_next_line/get_next_line_utils.c			\
		src/get_next_line/get_next_line_bonus.c			\
		src/get_next_line/get_next_line_utils_bonus.c	\

OBJECTS = ${SRC:.c=.o}

$(NAME): $(OBJECTS)
	@ar rcs $(NAME) $(OBJECTS)
	@echo "Library $(NAME) created."

all: $(NAME) bonus

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJECTS) $(OBJECTS_BONUS)
	@echo "Object files removed."

fclean: clean
	@rm -rf $(NAME)
	@echo "Library $(NAME) removed"

re: fclean all