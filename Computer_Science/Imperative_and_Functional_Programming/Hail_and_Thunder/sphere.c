#include <math.h>
#include <stdio.h>

double surface(double radius) { return 4 * M_PI * radius * radius; }

int main(void) {
    double r;
    printf(">");
    scanf("%lf", &r);
    printf("%lf\n", surface(r));
    return 0;
}
