CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11 -D_GNU_SOURCE


all: s21_cat

s21_cat:
	${CC} ${CFLAGS} s21_cat.c -o s21_cat

clean:
	rm -rf s21_cat

leaks: s21_cat
	leaks --atExit -- ./s21_cat -benst test_file/all_flag_tests/*

style: s21_cat
	python3 ../../materials/linters/cpplint.py --extensions=c *.c *.h

test: s21_cat
	sh test.sh

cppcheck: s21_cat
	cppcheck --enable=all --suppress=missingIncludeSystem . *.c *.h

checks: leaks style cppcheck

rebuild: clean s21_cat