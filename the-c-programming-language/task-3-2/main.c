#include <stdio.h>

void escape(char s[], char t[]) {
    unsigned t_i;
    unsigned s_i;

    s_i = 0;
    t_i = 0;

    while (t[t_i] != '\0') {
        switch (t[t_i]) {
            case '\t':
                s[s_i++] = '\\';
                s[s_i++] = 't';
                break;
            case '\n':
                s[s_i++] = '\\';
                s[s_i++] = 'n';
                break;
            default:
                s[s_i++] = t[t_i];
        }

        ++t_i;
    }

    s[s_i] = '\0';
}

void revolve(char revolved[], char escaped[]) {
    unsigned escaped_index = 0;
    unsigned revolved_index = 0;

    while (escaped[escaped_index] != '\0') {
        if (escaped[escaped_index] == '\\') {
            switch (escaped[escaped_index + 1]) {
                case 't':
                    revolved[revolved_index++] = '\t';
                    break;
                case 'n':
                    revolved[revolved_index++] = '\n';
                    break;
            }

            ++escaped_index;
        } else {
            revolved[revolved_index++] = escaped[escaped_index];
        }

        ++escaped_index;
    }

    revolved[revolved_index] = '\0';
}

main() {
    char text[] = "text with tabulations\tand divided\nto rows";

    char escaped[100];
    char revolved[100];

    escape(escaped, text);
    revolve(revolved, escaped);

    printf("ESCAPED:\n\n%s\n\nREVOLVED:\n\n%s\n", escaped, revolved);
}
