#include <iostream>
#include <conio.h>
#include <windows.h>

char ch = ' ';
int x = 38, y = 20;

void gotoxy(int x, int y) {
	COORD c = { x, y };
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), c);
}

void draw_ship(int x, int y) {
	gotoxy(x, y);
	printf("<^-^>");
}

void erase_ship(int x, int y) {
	gotoxy(x, y);
	printf("     ");
}

void start() {
    while(1) {
        if (_kbhit()) {
			ch = _getch();
            erase_ship(x, y);
			if (ch == 'a' and x - 1 > 0)
				draw_ship(--x, y);
			if (ch == 'd' and x + 1 < 75)
				draw_ship(++x, y);
			if (ch == 'w' and y - 1 > 0)
				draw_ship(x, --y);
			if (ch == 's' and y + 1 < 79)
				draw_ship(x, ++y);
			fflush(stdin);
		}
		draw_ship(x, y);
		Sleep(40);
		if(ch == 'x')
            break;
    }
}

void setup() {
	draw_ship(x, y);
}

int main() {

	setup();
    start();
	return 0;
}
