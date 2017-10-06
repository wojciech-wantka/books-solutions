#include <stdio.h>

unsigned setbits(unsigned x, unsigned p, unsigned n, unsigned y) {
    unsigned mask = (~(~0 << n)) << p; // ones in the middle
    return (x & ~mask) | (y & mask);
}

unsigned invert(unsigned x, int p, int n) {
    return setbits(x, p, n, ~x);
}

main() {
    unsigned x = 13141; // 11001101010101 bin

    // invert(x, 3, 7) = 11000010101101 bin = 12461

    printf("%u\n", invert(x, 3, 7));
}
