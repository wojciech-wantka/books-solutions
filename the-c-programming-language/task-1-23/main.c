#include <stdio.h>

#define CODE 0
#define ONELINE_COMMENT 1
#define MULTILINE_COMMENT 2

void process_code(char c, char *state) {
    if (c == '/') {
        c = getchar();

        if (c == '/') {
            *state = ONELINE_COMMENT;
        } else if (c == '*') {
            *state = MULTILINE_COMMENT;
        } else {
            putchar('/');
            putchar(c);
        }
    } else {
        putchar(c);
    }
}

void process_oneline_comment(char c, char *state) {
    if (c == '\n') {
        putchar('\n');
        *state = CODE;
    }
}

void process_multiline_comment(char c, char *state) {
    if (c == '*') {
        c = getchar();
        if (c == '/') {
            *state = CODE;
        }
    }
}

// oneline comment

/*
 * multiline
 * comment
 */

int main() {
    char c;
    char state = CODE;

    while ((c = getchar()) != EOF) {
        switch (c) {
            case CODE:
                process_code(c, &state);
                break;
            case ONELINE_COMMENT:
                process_oneline_comment(c, &state);
                break;
            case MULTILINE_COMMENT:
                process_multiline_comment(c, &state);
                break;
        }
    }
}
