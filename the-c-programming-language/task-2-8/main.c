#include <stdio.h>

unsigned rightrot(unsigned x, int n) {
    int i;
    unsigned mask = 1 << 8 * sizeof(unsigned) - 1;
    char add;

    n %= 8 * sizeof(unsigned);

    for (i = 0; i < n; ++i) {
        if (x % 2) {
            add = 1;
        } else {
            add = 0;
        }

        x >>= 1;

        if (add) {
            x |= mask;
        }
    }

    return x;
}

main() {
    unsigned x = 3014567595U; // 10110011101011101010011010101011 bin

    // rightrot(x, 10) = 10101010111011001110101110101001 bin = 2867653545

    printf("%u\n", rightrot(x, 10));
}
