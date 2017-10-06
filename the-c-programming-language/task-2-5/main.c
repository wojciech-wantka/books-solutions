#include <stdio.h>

int any(char string[], char characters[]);

main() {
    char string[] = "string";
    char characters[] = "tri";

    printf("%d\n", any(string, characters));
}

int any(char string[], char characters[]) {
    int i = 0;
    int j;
    char isFound = 0;

    while (string[i] != '\0' && !isFound) {
        j = 0;

        while (characters[j] != '\0' && !isFound) {
            if (string[i] != characters[j]) {
                ++j;
            } else {
                isFound = 1;
            }
        }

        ++i;
    }

    if (string[i] == '\0') {
        return -1;
    } else {
        return i - 1;
    }
}
