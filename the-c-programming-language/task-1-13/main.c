#include <stdio.h>

#define MAX_WORD_LENGTH 100

#define IN 0
#define OUT 1

main() {
    char c;
    int count[MAX_WORD_LENGTH];
    int length = 0;
    int i;
    char state = OUT;

    for (i = 0; i < MAX_WORD_LENGTH; ++i) {
        count[i] = 0;
    }

    while ((c = getchar()) != EOF) {
        if (c == ' ' || c == '\t' || c == '\n') {
            if (state == IN) {
                ++count[length - 1];
                length = 0;
                state = OUT;
            }
        } else {
            if (state == OUT) {
                state = IN;
            }

            ++length;
        }
    }

    for (i = 0; i < MAX_WORD_LENGTH; ++i) {
        if (count[i]) {
            printf("[%d]: %d\n", i + 1, count[i]);
        }
    }
}
