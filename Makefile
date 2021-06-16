NAME=mathing
TEST_NAME=$(NAME)_test
CC=gcc
CFLAGS=-Wall -Wextra -Werror -fsanitize=address
TEST_CFLAGS=-ggdb3 $(CFLAGS)

TEST_SRCS=main.o\
		calculator.o\
		tests.o

all:$(NAME)

$(NAME): $(TEST_SRCS)
	fclean
	$(CC) $(TEST_CFLAGS) $(TEST_SRCS) -o $(NAME)
	./$(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(TEST_SRCS)

re: fclean all

fclean: clean
	rm -f $(TEST_NAME)
	rm -f $(TEST_EXAMPLE)