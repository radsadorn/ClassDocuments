#include <iostream>
using namespace std;

int main() {

    char str[50] , *p, *q;
    p = str;
    q = p;

    scanf("%[^\n]",str);

    while(*(p+1)!='\0') {
        ++p;
    }
    while(*(q+1)!='\0') {
        if(*q!=*p) {
            printf("\nNot Palindrome\n");
            return 0;
        }
        ++q;
        --p;
    }
    printf("\nPalindrome\n");
}
