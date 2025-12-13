# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bfernan2 <bfernan2@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/17 13:01:12 by bfernan2          #+#    #+#              #
#    Updated: 2025/12/13 15:40:35 by bfernan2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_strlen.c ft_putchar_fd.c ft_atoi.c \
ft_putstr_fd.c ft_putnbr_fd.c\
ft_printf/ft_printf.c ft_printf/ft_putchar.c ft_printf/ft_puthex.c ft_printf/ft_putnbr.c ft_printf/ft_putptr.c \
ft_printf/ft_putstr.c ft_printf/ft_unsigned_putnbr.c \


BONUS_SRCS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c \
ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
ft_lstmap_bonus.c 

BONUS_OBJS = ${BONUS_SRCS:.c=.o}

CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror
OBJS = $(SRCS:.c=.o)
BONUS_OBJS = $(BONUS_SRCS:.c=.o)


$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)

all: $(NAME)

clean:
	@$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	@$(RM) $(NAME)

bonus: $(NAME) $(BONUS_OBJS)
	@ar r $(NAME) $(BONUS_OBJS)

re: fclean all

.PHONY: all clean fclean re bonus