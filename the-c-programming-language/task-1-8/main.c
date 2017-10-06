#include <stdio.h>

main() {
    char c;

    int numberOfSpaces = 0;
    int numberOfTabulators = 0;
    int numberOfLineFeeds = 0;

    while ((c = getchar()) != EOF) {
        if (c == ' ') {
            ++numberOfSpaces;
        } else if (c == '\t') {
            ++numberOfTabulators;
        } else if (c == '\n') {
            ++numberOfLineFeeds;
        }
    }

    printf("Number of spaces: %d\n", numberOfSpaces);
    printf("Number of tabulators: %d\n", numberOfTabulators);
    printf("Number of line feeds: %d\n", numberOfLineFeeds);
}
