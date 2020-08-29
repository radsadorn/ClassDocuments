#include <stdio.h>

void star(int n) {
    for(int i=0; i<n; ++i)
        printf("*");
    printf("\n");
}

int main() {
    int n;

    scanf("%d",&n);
    for(int i = n; i > 0; --i)
        star(i);
}
