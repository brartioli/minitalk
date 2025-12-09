# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bfernan2 <bfernan2@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/12/08 18:21:32 by bfernan2          #+#    #+#              #
#    Updated: 2025/12/08 19:26:15 by bfernan2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= minitalk

SRC= client.c

OBJ= $(SRC:.c=.o)
CC= cc
CFLAGS= -Wall -Wextra -Werror -g -Ilibft
LIBFT_DIR= ./libft/
LIBFT= $(LIBFT_DIR)libft.a

all: $(NAME)

$(NAME): $(OBJ) $(LIBFT)
	@$(CC) $(CFLAGS) $(OBJ) $(LIBFT) -o $(NAME)

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(LIBFT):
	@$(MAKE) -s -C $(LIBFT_DIR) all

clean:
	@rm -f $(OBJ)
	@$(MAKE) -s -C $(LIBFT_DIR) clean

fclean: clean
	@rm -f $(NAME)
	@$(MAKE) -s -C $(LIBFT_DIR) fclean

re: fclean all

.PHONY: all clean fclean ree