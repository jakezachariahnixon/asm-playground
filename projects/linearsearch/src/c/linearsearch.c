#include <stdio.h>
#include <inttypes.h>

int linsearch(uint64_t[], uint64_t, uint64_t);

int main() {
    uint64_t test[] = {2, 5, 8, 1, 3, 4};
    printf("%d\n", linsearch(test, 6, 3));
    return 0;
}
