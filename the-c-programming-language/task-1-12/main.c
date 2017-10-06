#include <stdio.h>

#define IN 1
#define OUT 0

main() {
    char c;
    char state = OUT;

    while ((c = getchar()) != EOF) {
        if (c == ' ' || c == '\t' || c == '\n') {
            if (state == IN) {
                state = OUT;
                putchar('\n');
            }
        } else {
            if (state == OUT) {
                state = IN;
            }

            putchar(c);
        }
    }

    if (state == IN) {
        putchar('\n');
    }
}
