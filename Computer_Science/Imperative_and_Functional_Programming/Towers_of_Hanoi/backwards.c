

#include <limits.h>
#include <stdio.h>
#include <string.h>

int main(void) {
    char buffer[100] = {0};
    scanf("%s", buffer);
    size_t n = strlen(buffer);
    char revBuffer[100] = {0};
    for (size_t i = 0; i < n; i++)
        revBuffer[i] = buffer[n - i - 1];
    printf("%s\n", revBuffer);
    return 0;
}
