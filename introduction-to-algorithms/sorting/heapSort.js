function Heap(array) {
    this.array = array;
    this.heapSize = array.length;
}

Heap.prototype.maxHeapify = function(index) {
    var end = false;
    var largest;
    var left, right;
    var swap;

    while (!end) {
        left = returnLeftDescendantIndex(index);
        right = returnRightDescendantIndex(index);

        if (left < this.heapSize && this.array[left] > this.array[index]) {
            largest = left;
        } else {
            largest = index;
        }

        if (right < this.heapSize && this.array[right] > this.array[largest]) {
            largest = right;
        }

        if (largest != index) {
            swap = this.array[index];
            this.array[index] = this.array[largest];
            this.array[largest] = swap;
            index = largest;
        } else {
            end = true;
        }
    }

    function returnLeftDescendantIndex(index) {
        return 2 * index + 1;
    }

    function returnRightDescendantIndex(index) {
        return 2 * index + 2;
    }
}

function buildMaxHeap(array) {
    var heap = new Heap(array);
    var index;

    for (index = Math.ceil(heap.array.length / 2 - 1); index >= 0; --index) {
        heap.maxHeapify(index);
    }

    return heap;
}

function heapSort(array) {
    var heap = buildMaxHeap(array);
    var index;
    var swap;

    for (index = heap.array.length - 1; index >= 1; --index) {
        swap = heap.array[0];
        heap.array[0] = heap.array[index];
        heap.array[index] = swap;
        --heap.heapSize;
        heap.maxHeapify(0);
    }

    return heap.array;
}

var table = [4, 1, 3, 2, 16, 9, 10, 14, 8, 7];
var sorted = heapSort(table);
console.log(sorted);
