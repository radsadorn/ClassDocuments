#include <iostream>
#include <math.h>

float area(float x1, float y1, float x2, float y2, float x3, float y3) {
    return abs((x1*y2+x2*y3+x3*y1)-(x2*y1+x3*y2+x1*y3))*0.5;
}

int main() {
    int x1,x2,x3,y1,y2,y3;

    std::cin>>x1>>y1>>x2>>y2>>x3>>y3;
    printf("%.2f",area(x1,y1,x2,y2,x3,y3));
}
