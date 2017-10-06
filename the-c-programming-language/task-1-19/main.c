#include <stdio.h>

#define MAXLINE 100

int my_getline(char line[], int maxline);
void reverse(char string[], int length);

main() {
    int len;
    char line[MAXLINE];

    while ((len = my_getline(line, MAXLINE)) > 0) {
        reverse(line, len);
        printf("%s\n", line);
    }
}

int my_getline(char s[], int lim) {
    int c, i;

    for (i = 0; i < lim - 1 && (c = getchar()) != EOF && c != '\n'; ++i) {
        s[i] = c;
    }

    s[i] = '\0';

    return i;
}

void reverse(char string[], int length) {
    int i;
    char swap;

    for (i = 0; i < length / 2; ++i) {
        swap = string[i];
        string[i] = string[length - 1 - i];
        string[length - 1 - i] = swap;
    }
}
