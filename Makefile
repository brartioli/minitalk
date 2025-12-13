# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bfernan2 <bfernan2@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/12/08 18:21:32 by bfernan2          #+#    #+#              #
#    Updated: 2025/12/13 15:18:07 by bfernan2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_C= client
NAME_S= server

SRC_C= $(NAME_C).c
SRC_S= $(NAME_S).c

OBJS_C= $(SRC_C:.c=.o)
OBJS_S= $(SRC_S:.c=.o)

CC= cc
CFLAGS= -Wall -Wextra -Werror -g -Ilibft
LIBFT_DIR= ./libft/
LIBFT= $(LIBFT_DIR)libft.a

all: $(LIBFT) $(NAME_C) $(NAME_S)

$(NAME_S): $(OBJS_S) $(LIBFT)
	@$(CC) $(CFLAGS) $(OBJS_S) -o $(NAME_S) -L$(LIBFT_DIR) -lft

$(NAME_C): $(OBJS_C) $(LIBFT)
	@$(CC) $(CFLAGS) $(OBJS_C) -o $(NAME_C) -L$(LIBFT_DIR) -lft

%.o: %.c minitalk.h
	@$(CC) $(CFLAGS) -c $< -o $@

$(LIBFT):
	@$(MAKE) -s -C $(LIBFT_DIR)

clean:
	@rm -f $(OBJS_C) $(OBJS_S)
	@$(MAKE) -s -C $(LIBFT_DIR) clean

fclean: clean
	@rm -f $(NAME_C) $(NAME_S)
	@$(MAKE) -C $(LIBFT_DIR) fclean

re: fclean all

.PHONY: all clean fclean re