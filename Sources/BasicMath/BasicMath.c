#include <stdlib.h>
#include "math.h"
#include "BasicMath.h"

Number add(Number a, Number b) {
    Number result = a + b;
    return result;
}

Number subtract(Number a, Number b) {
    Number result = a - b;
    return result;
}

void repeatNumber(Number x, Number n, Number* a) {
    int i;
    for (i=0; i<n; i++) {
        a[i] = x;
    }
}

Number randomRepeatNumber(Number x, Number* a) {
    Number n = arc4random() % 5;
    if (n < 2) {
        n = 2;
    }
    Number* array = (Number*)malloc(n * sizeof(Number));
    int i;
    for (i=0; i<n; i++) {
        array[i] = x;
    }
    *a = &array;
    return n;
}

Number addNumbers(const Number* a, Number n) {
    Number total = 0;
    int i;
    for (i=0; i<n; i++) {
        total += a[i];
    }
    return total;
}
