#include <stdio.h>

#define MAXLINE 100

int my_getline(char line[], int maxline);

main() {
    int len;
    int max;
    char line[MAXLINE];
    char longest[MAXLINE];

    max = 0;

    while ((len = my_getline(line, MAXLINE)) > 0) {
        if (len > 80) {
            printf("%s\n", line);
        }
    }
}

int my_getline(char s[], int lim) {
    int c, i;

    for (i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; ++i) {
        s[i] = c;
    }

    if (c == '\n') {
        s[i] = c;
        ++i;
    }

    s[i] = '\0';

    return i;
}
