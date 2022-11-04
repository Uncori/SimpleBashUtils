CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11 -D_GNU_SOURCE


all: grep

grep:
	@${CC} ${CFLAGS} grep.c -o grep

clean:
	@rm -rf grep *.txt

valgrind: grep
	@valgrind --leak-check=full --tool=memcheck --log-file=log.txt ./grep grep.c

cppcheck: grep
	@cppcheck --enable=all --std=c11 --inconclusive --suppress=missingIncludeSystem *.c

rebuild: clean grep