#ifndef _SRC_GREP_GREP_H_
#define _SRC_GREP_GREP_H_

#define LEN 1300

struct s_flag {
    int e;
    int f;
    int i;
    int v;
    int c;
    int l;
    int n;
    int h;
    int s;
    int count_flag;
    int count_file;
    int count_template;
    char **template;
    char **name_file;
};

int parsing_flag(int argc, char *argv[], struct s_flag *flags);
void parsing_file(struct s_flag flags);
int flag_f(char *stroka, struct s_flag *flags);

#endif // _SRC_GREP_GREP_H_
