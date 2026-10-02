#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int *stack;
    int len;
    int cap;
} Stack;

Stack newStack(int n) { return (Stack){calloc(n, sizeof(int)), 0, n}; }

int main() {
    int n;
    printf(">");
    scanf("%d", &n);
    Stack l_tower = newStack(n);
    return 0;
}
