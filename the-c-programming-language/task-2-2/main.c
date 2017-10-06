#include <stdio.h>

#define MAXLINE 100

int my_getline(char line[], int maxline);

main() {
}

int my_getline(char s[], int lim) {
    int c, i;

    for (i = 0; i < lim - 1; ++i) {
        c = getchar();

        if (c == EOF) {
            break;
        }

        if (c == '\n') {
            break;
        }

        s[i] = c;
    }

    if (c == '\n') {
        s[i] = c;
        ++i;
    }

    s[i] = '\0';

    return i;
}
