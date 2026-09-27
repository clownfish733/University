#include <stdio.h>

int cube(int x);

int main() {
    int x;
    printf(">");
    scanf("%d", &x);
    printf("\a%d\n", cube(x));
    return 0;
}

int cube(int x) { return x * x * x; }
