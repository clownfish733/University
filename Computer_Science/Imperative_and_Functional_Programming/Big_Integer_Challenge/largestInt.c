#include <stdio.h>

int largestInt(int low, long high) {
    long mid = low + (high - low) / 2;
    int test = mid;
    if (mid == test)
        low = mid;
    else
        high = mid;
    if (high - low < 2)
        return test;
    return largestInt(low, high);
}

int main(void) {
    int n = largestInt(0, 2500000000);
    printf("Largest int: %d\n", n);

    return 0;
}
