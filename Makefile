NAME=mathing
TEST_NAME=test_mathing
CC=gcc
CFLAGS=-Wall -Wextra -Werror

SRCS= main.c calculator.c

TEST_SRCS= Unit_tests/main.c\
		Unit_tests/tests.c\
		calculator.c

all:$(NAME)

$(NAME): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(NAME)

test: $(SRCS) $(TEST_SRCS)
	$(CC) $(CFLAGS) $(TEST_SRCS) -o $(TEST_NAME)

acceptence: $(NAME)
	./Acceptence_test/acceptence.sh

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(NAME)
	rm -f $(TEST_NAME)
	rm -f *.o

re: fclean all

fclean: clean
