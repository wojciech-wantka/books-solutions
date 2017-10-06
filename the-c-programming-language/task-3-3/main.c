#include <stdio.h>
#include <string.h>

int write_expansion(char text[], unsigned index, const char start_character, const char end_character) {
    unsigned i;

    for (i = 0; i < end_character - start_character + 1; ++i) {
        text[index++] = start_character + i;
    }

    return end_character - start_character + 1;
}

void expand(char expanded[], const char abbreviated[]) {
    unsigned abbreviated_index = 0;
    unsigned expanded_index = 0;

    unsigned abbreviated_length = strlen(abbreviated);

    // rewrite hyphen ("-") in beggining of the string, if present
    if (abbreviated[0] == '-') {
        expanded[expanded_index++] = abbreviated[abbreviated_index++];
    }

    // check if hyphen is present on the end
    if (abbreviated[abbreviated_length - 1] == '-') {
        --abbreviated_length;
    }

    while (abbreviated_index < abbreviated_length) {
        // if character followng after current character is not hyphen, then rewrite it
        if (abbreviated[abbreviated_index + 1] != '-') {
            expanded[expanded_index++] = abbreviated[abbreviated_index];
            ++abbreviated_index;
        } else { // abbreviation found
            // abbreviation of the form x-y
            if (
                // case 1: standard situation
                abbreviated[abbreviated_index + 3] != '-'
                // case 2: abbreviation occured on the end of the string ended with hyphen and has x-y- form
                || abbreviated[abbreviated_index + 3] == '-' && abbreviated[abbreviated_index + 4] == '\0') {
                expanded_index += write_expansion(expanded, expanded_index, abbreviated[abbreviated_index], abbreviated[abbreviated_index + 2]);
                abbreviated_index += 3;
            } else { // "transitive" abbreviation of the form x-y-z => it's equivalent with abbreviation of the form x-z
                expanded_index += write_expansion(expanded, expanded_index, abbreviated[abbreviated_index], abbreviated[abbreviated_index + 4]);
                abbreviated_index += 5; 
            }
        }
    }

    // rewrite hyphen on the end, if present
    if (abbreviated[abbreviated_index] == '-') {
        expanded[expanded_index++] = '-';
    }

    expanded[expanded_index] = '\0';
}

main() {
    const char abbreviated[] =
"-a-d: hyphen on the beginning and abbreviation\n\
digits: 4-7\n\
lower case letters: a-d\n\
upper case letters: G-R\n\
joined abbreviations: a-d0-4\n\
transitive abbreviation: a-f-m\n\
abbreviation and hyphen on the end: a-d-";

    char expanded[1000];

    expand(expanded, abbreviated);

    printf("%s\n", expanded);
}
