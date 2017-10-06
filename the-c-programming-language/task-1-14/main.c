#include <stdio.h>

main() {
    char c;
    const int length = 'z' - 'a' + 1;
    int count[length];
    int i;

    for (i = 0; i < length; ++i) {
        count[i] = 0;
    }

    while ((c = getchar()) != EOF) {
        if ('a' <= c && c <= 'z') {
            ++count[c - 'a'];
        }
    }

    for (i = 0; i < length; ++i) {
        if (count[i]) {
            printf("[%c]: %d\n", 'a' + i, count[i]);
        }
    }
}
