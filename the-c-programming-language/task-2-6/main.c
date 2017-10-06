#include <stdio.h>

unsigned setbits(unsigned x, unsigned p, unsigned n, unsigned y) {
    unsigned mask = (~(~0 << n)) << p; // ones in the middle
    return (x & ~mask) | (y & mask);
}

main() {
    unsigned x = 1734; // 11011000110 bin
    unsigned y = 1261; // 10011101101 bin

    // setbits(x, 2, 4, y) = 11011101110 bin = 1774

    printf("%d\n", setbits(x, 2, 4, y));
}
