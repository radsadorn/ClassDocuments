#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>

int main(void) {
    int pin[3] = {0, 2, 3};
    int bi[8][3] = {
                        {0,0,0},{0,0,1},{0,1,0},
                        {0,1,1},{1,0,0},{1,0,1},
                        {1,1,0},{1,1,1}
                    };

    printf("LED blinking by wiringPi\n");
    if (wiringPiSetup() == -1) {
        printf("Setting up problem ... Abort!");
        exit(1);
    }
    int i= 0;
    for (i = 0; i < 3; ++i)
        pinMode(pin[i], OUTPUT);

    while(1) {
        for (i = 0; i < 8; ++i) {
            printf("%d\n", i);
            int k;
            for (k = 0; k < 3; ++k)
                digitalWrite(pin[k], bi[i][k]);
            delay(1000);
        }
    }
}
