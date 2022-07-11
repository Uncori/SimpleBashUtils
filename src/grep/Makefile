CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11 -D_GNU_SOURCE


all: s21_grep

s21_grep:
	${CC} ${CFLAGS} s21_grep.c -o s21_grep

clean:
	rm -rf s21_grep

leaks: s21_grep
	leaks --atExit -- ./s21_grep -f test_file/template.txt test_file/full.txt

style: s21_grep
	python3 ../../materials/linters/cpplint.py --extensions=c *.c *.h

test: s21_grep
	sh test.sh

cppcheck: s21_grep
	cppcheck --enable=all --suppress=missingIncludeSystem . *.c *.h

checks: leaks style cppcheck

rebuild: clean s21_grep