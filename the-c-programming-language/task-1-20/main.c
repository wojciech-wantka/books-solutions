#include <stdio.h>

void detab(int numberOfSpaces);

main() {
    detab(10);
}

void detab(int numberOfSpaces) {
    char c;
    int i;

    while ((c = getchar()) != EOF) {
        if (c == '\t') for (i = 0; i < numberOfSpaces; ++i) {
            putchar(' ');
        } else {
            putchar(c);
        }
    }
}
