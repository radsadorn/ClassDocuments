#include <stdio.h>

int main() {

	char *p , str[50];
	p = str;
	scanf("%s",str);

	while(*p!='\0') {
	    ++p;
	}
	--p;
	while(*p!='\0') {
	    printf("%c",*p);
	    --p;
	}
//	system("pause");
	return 0;
}
