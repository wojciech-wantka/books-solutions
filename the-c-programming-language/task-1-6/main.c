#include <stdio.h>

main() {
    int c;

    c = (getchar() != EOF);

    if (c) {
        printf("equals 1\n");
    } else {
        printf("equals 0\n");
    }
}
