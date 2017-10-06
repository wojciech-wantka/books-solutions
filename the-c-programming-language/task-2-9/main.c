#include <stdio.h>

int bitcount(unsigned x) {
    int count = 0;

    while (x != 0) {
        ++count;
        x &= x - 1;
    }

    return count;
}

main() {
    int x = 362; // 101101010 bin

    printf("%d\n", bitcount(x));
}
