#include <stdio.h>

int main()
{
    int a, b;
    printf("CD : Greatest Common Divisor\n");

    printf("Enter number 1: ");
    scanf("%d", &a);
    printf("Enter number 2: ");
    scanf("%d", &b);

    int gcd = gcd_func(a, b);
    printf("GCD of %d and %d is %d.\n", a, b, gcd);
    return 0;
}
