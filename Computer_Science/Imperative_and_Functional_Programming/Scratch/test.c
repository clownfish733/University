#include <stdio.h>
enum Colors { RED, GREEN, BLUE };

int main(void) {
    printf("Hello\n");
    printf("%d\n", GREEN);
    fprintf(stderr, "ERROR\n");

    for (int i = 0; i < 10;) {
        printf("%d\n", i++);
    }
    for (int i = 0; i < 10;) {
        printf("%d\n", ++i);
    }
    return 0;
}
