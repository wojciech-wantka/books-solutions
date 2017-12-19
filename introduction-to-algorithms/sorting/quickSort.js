function partition(array, left, right) {
    var delimiter = array[right];
    var i = left - 1;
    var swap;
    var j;

    for (j = left; j < right; ++j) {
        if (array[j] <= delimiter) {
            ++i;
            swap = array[i];
            array[i] = array[j];
            array[j] = swap;
        }
    }

    swap = array[i + 1];
    array[i + 1] = array[right];
    array[right] = swap;

    return i + 1;
}

function quicksort(array, left, right) {
    var delimiter;

    if (left < right) {
        delimiter = partition(array, left, right);
        quicksort(array, left, delimiter - 1);
        quicksort(array, delimiter + 1, right);
    }
}

var a = [10, 9, 8, 7, 6, 5];
quicksort(a, 0, a.length - 1);
console.log(a);
