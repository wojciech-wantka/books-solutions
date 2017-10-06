#include <stdio.h>

#define MAXLINE 100

int my_getline(char line[], int maxline);
void reverse(char string[], int length);
int htoi(char s[], int length);

main() {
    char line[MAXLINE];
    int length;

    while ((length = my_getline(line, MAXLINE)) > 0) {
        reverse(line, length);
        printf("decimal: %d\n", htoi(line, length));
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

int htoi(char s[], int length) {
    int i;
    int coefficient;
    int weight = 1;
    int value = 0;

    for (i = 0; i < length; ++i) {
        if ('0' <= s[i] && s[i] <= '9') {
            coefficient = s[i] - '0';
        } else if ('a' <= s[i] && s[i] <= 'f') {
            coefficient = s[i] - 'a' + 10;
        }

        value += coefficient * weight;

        weight *= 16;
    }

    return value;
}
