#include "s21_grep.h"

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

int flag_f(char *stroka, struct s_flag *flags) {
  int error = 0;
  FILE *file = fopen(stroka, "rt");
  if (file == NULL) {
    printf("grep: %s: No such file or directory\n", stroka);
    error = -1;
  } else {
    char *line = NULL;
    size_t len = 0;
    while (getline(&line, &len, file) != -1) {
      int tmp_len = strlen(line);
      int str_len = line[tmp_len - 1] == '\n' ? tmp_len : tmp_len + 1;
      snprintf(flags->template[flags->count_template++], str_len, "%s", line);
    }
    free(line);
    fclose(file);
  }
  return error;
}

int parsing_flag(int argc, char *argv[], struct s_flag *flags) {
  size_t index_e = 1;
  char simbol_error;
  int error = 0;
  for (int i = 1; i < argc; ++i) {
    if (argv[i][0] == '-') {
      int non_SOS = 0;
      for (size_t j = 1; j < strlen(argv[i]) && non_SOS == 0; ++j) {
        if (argv[i][j] == 'e') {
          flags->e = 1;
          flags->count_flag++;
          if (j == strlen(argv[i] + 1)) {
            i++;
            snprintf(flags->template[flags->count_template++], LEN, "%s",
                     argv[i]);
            non_SOS++;
          } else if (index_e != strlen(argv[i]) - 1) {
            snprintf(flags->template[flags->count_template++], LEN, "%s",
                     &argv[i][++j]);
            non_SOS++;
          }
        } else if (argv[i][j] == 'f') {
          flags->f = 1;
          flags->count_flag++;
          if (j == strlen(argv[i] + 1)) {
            i++;
            error = flag_f(argv[i], flags);
            non_SOS++;
          } else if (index_e != strlen(argv[i]) - 1) {
            error = flag_f(&argv[i][++j], flags);
            non_SOS++;
          }
        } else if (argv[i][j] == 'i') {
          flags->i = 1;
          flags->count_flag++;
        } else if (argv[i][j] == 'v') {
          flags->v = 1;
          flags->count_flag++;
        } else if (argv[i][j] == 'c') {
          flags->c = 1;
          flags->count_flag++;
        } else if (argv[i][j] == 'l') {
          flags->l = 1;
          flags->count_flag++;
        } else if (argv[i][j] == 'n') {
          flags->n = 1;
          flags->count_flag++;
        } else if (argv[i][j] == 'h') {
          flags->h = 1;
          flags->count_flag++;
        } else if (argv[i][j] == 's') {
          flags->s = 1;
          flags->count_flag++;
        } else {
          simbol_error = argv[i][j];
          printf("grep: invalid option -- %c\nusage: grep [-eivclnhs]\n",
                 simbol_error);
          flags->count_flag = -1;
          error = -1;
        }
      }
    } else if (flags->count_template == 0) {
      snprintf(flags->template[flags->count_template++], LEN, "%s", argv[i]);
    } else {
      snprintf(flags->name_file[flags->count_file++], LEN, "%s", argv[i]);
    }
  }
  return error;
}

void parsing_file(struct s_flag flags) {
  for (int i = 0; i < flags.count_file; ++i) {
    FILE *file = fopen(flags.name_file[i], "rt");
    if (file == NULL) {
      if (!flags.s) {
        printf("grep: %s: No such file or directory\n", flags.name_file[i]);
      }
    } else {
      char *line = NULL;
      size_t len = 0;
      int count_strok = 0, count_ex_file = 0, read, count_line = 1;
      int reg_match = 1;
      while ((read = getline(&line, &len, file)) != -1) {
        for (int j = 0; j < flags.count_template; ++j) {
          regex_t preg;
          int reg_option = flags.i ? REG_ICASE : REG_EXTENDED;
          regcomp(&preg, flags.template[j], reg_option);
          reg_match = regexec(&preg, line, 0, 0, 0);
          if (reg_match == 0) {
            j = flags.count_template;
          }
          regfree(&preg);
        }
        if (flags.v) {
          if (reg_match)
            reg_match = 0;
          else
            reg_match = 1;
        }
        if (!reg_match) {
          count_strok++;
          count_ex_file = 1;
        }
        if (!reg_match && !flags.l && !flags.c) {
          if (flags.count_file > 1 && !flags.h) {
            printf("%s:", flags.name_file[i]);
          }
          if (flags.n) printf("%d:", count_line);
          printf("%s", line);
          if (line[strlen(line) - 1] != '\n') {
            printf("\n");
          }
        }
        count_line++;
      }
      if (flags.c) {
        if (flags.count_file > 1 && !flags.h) {
          printf("%s:", flags.name_file[i]);
        }
        if (flags.l && count_strok) {
          count_strok = 1;
        }
        printf("%d\n", count_strok);
        count_strok = 0;
      }
      if (flags.l && count_ex_file == 1) {
        printf("%s\n", flags.name_file[i]);
        count_ex_file = 0;
      }
      free(line);
      fclose(file);
    }
  }
}

int main(int argc, char *argv[]) {
  struct s_flag flags;
  flags.e = 0, flags.f = 0, flags.i = 0, flags.v = 0, flags.c = 0, flags.l = 0,
  flags.n = 0, flags.h = 0, flags.s = 0, flags.count_flag = 0,
  flags.count_file = 0, flags.count_template = 0;
  flags.template = (char **)malloc(LEN * sizeof(char *));
  flags.name_file = (char **)malloc(LEN * sizeof(char *));
  for (int i = 0; i < LEN; i++) {
    flags.template[i] = (char *)malloc(LEN * sizeof(char));
    flags.name_file[i] = (char *)malloc(LEN * sizeof(char));
  }
  int error_flag = parsing_flag(argc, argv, &flags);
  if (!error_flag) {
    parsing_file(flags);
  }
  for (int i = 0; i < LEN; i++) {
    free(flags.template[i]);
    free(flags.name_file[i]);
  }
  free(flags.template);
  free(flags.name_file);
  return 0;
}
