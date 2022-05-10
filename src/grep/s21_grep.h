#ifndef SRC_GREP_S21_GREP_H_
#define SRC_GREP_S21_GREP_H_
#include <regex.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define LEN 1300
struct s_flag;
int parsing_flag(int argc, char *argv[], struct s_flag *flags);
void parsing_file(struct s_flag flags);
int flag_f(char *stroka, struct s_flag *flags);
#endif  // SRC_GREP_S21_GREP_H_
