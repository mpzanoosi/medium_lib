#include <stdio.h>
#include "lolo.h"

int main()
{
    double a = 10, b = 2.3;
    double c = lolo_add2(a, b);
    printf("%f + %f = %f\n", a, b, c);
    return 0;
}