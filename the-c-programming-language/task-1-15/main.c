#include <stdio.h>

int fahr2cel(int fahr) {
    return 5 * (fahr - 32) / 9;
}

main() {
    int lower, upper, step, fahr;

    lower = 0;
    upper = 300;
    step = 20;

    while (fahr <= upper) {
        printf("%d\t%d\n", fahr, fahr2cel(fahr));
        fahr += step;
    }
}
