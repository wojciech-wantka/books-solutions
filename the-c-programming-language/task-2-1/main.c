#include <float.h>
#include <limits.h>
#include <stdio.h>

main() {
    printf("SIGNED INTEGERS:\n\n");

    printf("min signed char: %d\n", CHAR_MIN);
    printf("max signed char: %u\n\n", CHAR_MAX);

    printf("min signed short: %d\n", SHRT_MIN);
    printf("max signed short: %u\n\n", SHRT_MAX);

    printf("min signed int: %d\n", INT_MIN);
    printf("max signed int: %u\n\n", INT_MAX);

    printf("min signed long: %f\n", (double)LONG_MIN);
    printf("max signed long: %f\n\n", (double)LONG_MAX);

    printf("UNSIGNED INTEGERS:\n\n");

    printf("max unsigned char: %u\n\n", UCHAR_MAX);

    printf("max unsigned short: %u\n\n", USHRT_MAX);

    printf("max unsigned int: %u\n\n", UINT_MAX);

    printf("max unsigned long: %f\n\n", (double)ULONG_MAX);

    printf("FLOATS:\n\n");

    printf("epsilon float: %f\n", FLT_EPSILON);
    printf("max float: %f\n\n", FLT_MAX);

    printf("epsilon double: %f\n", DBL_EPSILON);
    printf("max double: %f\n\n", DBL_MAX);
}
