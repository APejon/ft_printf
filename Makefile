# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amalbrei <amalbrei@student.42abudhabi.ae>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/20 20:39:54 by amalbrei          #+#    #+#              #
#    Updated: 2022/03/24 19:42:31 by amalbrei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a
SUBNAME	=	libft.a
CC		=	gcc
CFLAGS	=	-Wall	-Wextra	-Werror
LIB		=	ar	-rcs
RM		=	rm	-rf
MAINDIR	=	../ft_printf
SUBDIR	=	libft
MAKE	=	make

SRCS = 		ft_printf.c			ft_allocate.c		ft_putchar_arg.c	\
			ft_putpointer_arg.c	ft_puthexa_arg.c	ft_uputnbr_arg.c	\
			ft_putnbr_arg.c		ft_putstr_arg.c		ft_putpercent_arg.c	\
			ft_createflag.c		ft_isflag.c			ft_nlen.c			\
			ft_addspaces.c		ft_fn.c									\

B_SRCS =

OBJS = 		$(SRCS:.c=.o)

B_OBJS =	$(B_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	cd $(SUBDIR) && $(MAKE) && cp -v $(SUBNAME) ../$(NAME)
	$(LIB) $(NAME) $(OBJS)

bonus: all

clean:
	$(RM) $(OBJS) $(B_OBJS)
	cd $(SUBDIR) && $(MAKE) clean 

fclean: clean
	$(RM) $(NAME)
	cd $(SUBDIR) && $(MAKE) fclean

re: fclean $(NAME)

.PHONY = all clean fclean re

