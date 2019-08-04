#include <stdio.h>
#include <inttypes.h>

double sum(double[], uint64_t);

int main() {
    double test[] = {2.3, 4.5, 6.7, -2.3, -6.9, 3.4};
    printf("%2.1f\n", sum(test, 6));
    return 0;
}
