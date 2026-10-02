

#include <stdio.h>

int square(int n) { return n * n; }

int main(void) {
    int n = 42;
    printf("%d squared is %d\n", n, square(n));
    return 0;
}
