NAME = gravity_shift
SRC = main.c
SRC_FILES = $(addprefix src/, $(SRC))
HEADER = gravity_shift.h
HEADER_FILES = $(addprefix include/, $(HEADER))
CC = cc
CFLAGS = -Wall -Wextra -g # -Werror
RM = rm -rf
INCLUDING = -I./include
LINKING =

all: $(NAME)

$(NAME): $(SRC_FILES) $(HEADER_FILES)
	$(CC) $(CFLAGS) $(INCLUDING) $(SRC_FILES) -o $(NAME) $(LINKING)

clean:
	$(RM) $(NAME)

re: clean all

.PHONY: all clean re
