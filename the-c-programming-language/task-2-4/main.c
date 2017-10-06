#include <stdio.h>

void squeeze(char string[], char characters[]);

main() {
    char string[] = "bedziemy usuwac literki";
    char characters[] = "edu";

    squeeze(string, characters);

    printf("%s\n", string);
}

void squeeze(char string[], char characters[]) {
    int i = 0, j = 0;
    int k;

    while (string[i] != '\0') {
        k = 0;
        while (characters[k] != '\0' && string[i] != characters[k]) {
            ++k;
        }

        if (characters[k] == '\0') {
            string[j] = string[i];
            ++j;
        }

        ++i;
    }

    string[j] = '\0';
}
