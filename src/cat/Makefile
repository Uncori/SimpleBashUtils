CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11 -D_GNU_SOURCE


all: cat

cat:
	@${CC} ${CFLAGS} cat.c -o cat

clean:
	@rm -rf cat *.txt

valgrind: cat
	@valgrind --leak-check=full --tool=memcheck --log-file=log.txt ./cat cat.c

cppcheck: cat
	@cppcheck --enable=all --std=c11 --inconclusive --suppress=missingIncludeSystem *.c

rebuild: clean cat