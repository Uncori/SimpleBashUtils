#ifndef SRC_CAT_S21_CAT_H_
#define SRC_CAT_S21_CAT_H_
#include <stdio.h>
#include <string.h>
struct short_flag;
void openFile(char *file_name, struct short_flag options);
int parsingFlag(int argc, char *argv[], struct short_flag *options);
void parsingFile(int argc, char *argv[], struct short_flag options);
#endif  // SRC_CAT_S21_CAT_H_
