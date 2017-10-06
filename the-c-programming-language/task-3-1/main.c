#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void generateRandomArray(int array[], const unsigned size, const int min, const int max) {
    int range = max - min + 1;
    int i;

    for (i = 0; i < size; ++i) {
        array[i] = rand() % range + min;
    }
}

int compare(const void *a, const void *b) {
    int value_a = *((int*)a);
    int value_b = *((int*)b);

    if (value_a < value_b) {
        return -1;
    } else if (value_a == value_b) {
        return 0;
    } else {
        return 1;
    }
}

int ritchie_bisearch(const int x, const int v[], const int n) {
    int low, high, mid;

    low = 0;
    high = n - 1;

    while (low <= high) {
        mid = (low + high) / 2;

        if (x < v[mid]) {
            high = mid - 1;
        } else if (x > v[mid]) {
            low = mid + 1;
        } else {
            return mid;
        }
    }

    return -1;
}

int my_bisearch(const int x, const int v[], const int n) {
    int low, high, mid;

    low = 0;
    high = n - 1;

    while (low < high) {
        mid = (low + high) / 2;

        if (x <= v[mid]) {
            high = mid;
        } else {
            low = mid + 1;
        }
    }

    return (x == v[low] ? low : -1);
}

main() {
    const unsigned size = 10000000;
    const int min = 0;
    const int max = 100000;

    const unsigned numberOfTests = 100000;

    /* ****************************************** */

    unsigned i;
    int number;
    const int range = max - min + 1;
    int *array;
    int *tests;

    void *bsearch_ptr;
    int bsearch_index;
    int ritchie_index;
    int my_index;

    int bsearch_value;
    int ritchie_value;
    int my_value;

    clock_t start;
    clock_t stop;

    unsigned bsearch_time;
    unsigned ritchie_time;
    unsigned my_time;

    /* ****************************************** */

    srand(time(NULL));

    /* ****************************************** */

    tests = (int*) malloc(numberOfTests * sizeof(int));
    generateRandomArray(tests, numberOfTests, min, max);

    /* ****************************************** */

    array = (int*)malloc(size * sizeof(int));
    generateRandomArray(array, size, min, max);
    qsort(array, size, sizeof(int), compare);

    /* ****************************************** */

    /*
    for (i = 0; i < numberOfTests; ++i) {
        bsearch_ptr = bsearch(&tests[i], array, size, sizeof(int), compare);

        if (bsearch_ptr == NULL) {
            bsearch_index = -1;
        } else {
            bsearch_index = ((int*)bsearch_ptr - array);
        }

        ritchie_index = ritchie_bisearch(tests[i], array, size);
        my_index = my_bisearch(tests[i], array, size);

        if (bsearch_index != ritchie_index || bsearch_index != my_index) {
            printf("bsearch_index: %d, ritchie_index: %d, my_index: %d\n", bsearch_index, ritchie_index, my_index);

            bsearch_value = (bsearch_index != -1 ? array[bsearch_index] : 0);
            ritchie_value = (ritchie_index != -1 ? array[ritchie_index] : 0);
            my_value = (my_index != -1 ? array[my_index] : 0);

            printf("bsearch_value: %d, ritchie_value: %d, my_value: %d\n", bsearch_value, ritchie_value, my_value);

            abort();
        }
    }
    */

    /* ****************************************** */

    start = clock();

    for (i = 0; i < numberOfTests; ++i) {
        bsearch(&tests[i], array, size, sizeof(int), compare);
    }

    stop = clock();

    bsearch_time = stop - start;

    // ******************************************

    start = clock();

    for (i = 0; i < numberOfTests; ++i) {
        ritchie_bisearch(tests[i], array, size);
    }

    stop = clock();

    ritchie_time = stop - start;

    // ******************************************

    start = clock();

    for (i = 0; i < numberOfTests; ++i) {
        my_bisearch(tests[i], array, size);
    }

    stop = clock();

    my_time = stop - start;

    // ******************************************

    printf("bsearch_time: %d, ritchie_time: %d, my_time: %d\n", bsearch_time, ritchie_time, my_time);

    /* ****************************************** */
}
