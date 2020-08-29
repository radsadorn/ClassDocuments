#include <iostream>
#include <conio.h>
#include <windows.h>
#include <vector>

char ch = ' ';
int x = 38, y = 20;
int direc = 0;
int shoot = 0;
std::vector <int> xbullet;
std::vector <int> ybullet;


void setcursor(bool visible) {
	HANDLE console = GetStdHandle(STD_OUTPUT_HANDLE);
	CONSOLE_CURSOR_INFO lpCursor;
	lpCursor.bVisible = visible;
	lpCursor.dwSize = 20;
	SetConsoleCursorInfo(console, &lpCursor);
}

void setcolor(int fg, int bg) {
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleTextAttribute(hConsole, bg * 16 + fg);
}

void gotoxy(int x, int y) {
	COORD c = { x, y };
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), c);
}

void draw_ship(int x, int y) {
	gotoxy(x, y);
	setcolor(5, 7);
	printf("_o^o_",shoot);
}

void erase_ship(int x, int y) {
	gotoxy(x, y);
	setcolor(0, 0);
	printf("     ");
}

void draw_bullet(int x, int y) {
    gotoxy(x, y);
	setcolor(2, 0);
	printf("^");
}

void erase_bullet(int x, int y) {
	gotoxy(x, y);
	setcolor(0, 0);
	printf(" ");
}

void pressed() {
    ch = _getch();
    if (ch == 'a' and x - 1 > 0) direc = -1;
    if (ch == 'd' and x + 1 < 75) direc = 1;
    if (ch == 's') direc = 0;
    if (ch == ' ' and shoot < 5) {
        xbullet.push_back(x+2);
        ybullet.push_back(y);
        ++shoot;
    }
    fflush(stdin);
}

void drived() {
    if((x == 0 or x == 75) and ch == ' ')
        direc = 0;
    if(direc != 0)
        erase_ship(x, y);
    draw_ship(x += direc, y);
    Sleep(100);
}

int shooting(int shoot) {
    for(int i=xbullet.size()- shoot; i<xbullet.size(); ++i) {

        erase_bullet(xbullet[i],ybullet[i]);
        draw_bullet(xbullet[i],--ybullet[i]);

        if(ybullet[i] < 1) {
            --shoot;
            erase_bullet(xbullet[i],ybullet[i]);
        }

        draw_ship(x,y);
    }
    return shoot;
}

void start() {
    while(1) {
        if (_kbhit()) {
			pressed();
		}

        shoot = shooting(shoot);
		drived();

		if(ch == 'x')
            break;
        ch = ' ';
    }
}

void setup() {
    setcolor(2, 4);
	draw_ship(x, y);
	setcursor(0);
}

int main() {

	setup();
	start();
	return 0;
}
