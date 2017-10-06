#include <stdio.h>

main() {
    char c;
    char isSpace = 0;

    while ((c = getchar()) != EOF) {
        if (c == ' ') {
            isSpace = 1;
        } else {
            if (isSpace) {
                putchar(' ');
            }

            isSpace = 0;
            putchar(c);
        }
    }
}
