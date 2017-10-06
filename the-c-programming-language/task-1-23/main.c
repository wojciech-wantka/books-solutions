#include <stdio.h>

#define CODE 0
#define ONELINE_COMMENT 1
#define MULTILINE_COMMENT 2

main() {
    char c;
    char state = CODE;

    while ((c = getchar()) != EOF) {
        /*
         * Machine has 3 states: 
         *  - CODE
         *  - ONELINE_COMMENT
         *  - MULTILINE_COMMENT
         */

        if (state == CODE) {
            if (c == '/') { // first '/' in CODE state means possible comment
                // get next character
                c = getchar();

                if (c == '/') { // one line comment
                    state = ONELINE_COMMENT;
                } else if (c == '*') { // multiline comment
                    state = MULTILINE_COMMENT;
                } else {
                    putchar('/'); 
                    putchar(c);
                }
            } else putchar(c);
        } else if (state == ONELINE_COMMENT) {
            if (c == '\n') {
                putchar('\n');
                state = CODE;
            }
        } else {
            if (c == '*') {
                c = getchar();
                if (c == '/') {
                    state = CODE;
                }
            }
        }
    }
}
