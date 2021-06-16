NAME=mathing
CC=gcc
CFLAGS=-Wall -Wextra -Werror
TEST_CFLAGS=-ggdb3 $(CFLAGS)

TEST_SRCS=main.c\
		calculator.c\
		tests.c

all:$(NAME)

$(NAME): $(TEST_SRCS)
	$(CC) $(TEST_CFLAGS) $(TEST_SRCS) -o $(NAME)

# %.o: %.c
# 	$(CC) -c $(CFLAGS)  -o $@ $<

clean:
	rm -f $(NAME)

re: fclean all

fclean: clean


# NAME=mathing
# CC=gcc
# CFLAGS=-Wall -Wextra -Werror -fsanitize=address
# TEST_CFLAGS=-ggdb3 $(CFLAGS)

# TEST_SRCS=main.c\
# 		calculator.c\
# 		tests.c

# all:$(NAME)

# $(NAME): $(TEST_SRCS)
# 	$(CC) $(TEST_CFLAGS) $(TEST_SRCS) -o $(NAME)

# clean:
# 	rm -f $(NAME)

# re: fclean all

# fclean: clean

# NAME=mathing
# CC=gcc
# CFLAGS=-Wall -Wextra -Werror
# TEST_CFLAGS=-ggdb3 $(CFLAGS)

# TEST_SRCS=main.c\
# 		calculator.c\
# 		tests.c

# all:$(NAME)

# $(NAME): $(TEST_SRCS)
# 	$(CC) $(TEST_CFLAGS) $(TEST_SRCS) -o $(NAME)

# # test_run: $(NAME)
# # 	./$(NAME)

# clean:
# 	rm -f $(NAME)

# re: fclean all

# fclean: clean