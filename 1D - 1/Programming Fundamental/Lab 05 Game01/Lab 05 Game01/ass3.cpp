#include <iostream>
#include <conio.h>
#include <windows.h>
#include <vector>
#include <time.h>

char ch = ' ';
int x = 38, y = 40;
int direc = 0;
int shoot = 0;
std::vector <int> xbullet;
std::vector <int> ybullet;
int score = 0;
int xBullet,yBullet;


void setcursor(bool visible) {
	HANDLE console = GetStdHandle(STD_OUTPUT_HANDLE);
        CONSOLE_CURSOR_INFO lpCursor;
            lpCursor.bVisible = visible;
                lpCursor.dwSize = 20;
                    SetConsoleCursorInfo(console, &lpCursor);
}

char cursor(int x, int y) {
    HANDLE hStd = GetStdHandle(STD_OUTPUT_HANDLE);
    char buf[2]; COORD c = {x, y}; DWORD num_read;
    if(!ReadConsoleOutputCharacter(hStd,(LPTSTR)buf,1,c,(LPDWORD)&num_read))
        return '\0';
    else
        return buf[0];
}

void setcolor(int fg, int bg) {
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleTextAttribute(hConsole, bg * 16 + fg);
}

void gotoxy(int x, int y) {
	COORD c = { x, y };
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), c);
}


void soundBullet(int shoot) {
    if(shoot>0)
        Beep(600,10);
}

void draw_ship(int x, int y) {
	gotoxy(x, y);
        setcolor(2, 4);
            printf("<^^^>");
}

void erase_ship(int x, int y) {
	gotoxy(x, y);
        setcolor(0, 0);
            printf("     ");
}

void draw_bullet(int x, int y) {
    gotoxy(x, y);
        setcolor(6, 6);
            printf("|");
}

void clear_bullet(int x, int y) {
	gotoxy(x, y);
        setcolor(0, 0);
            printf(" ");
}

void pressed() {
    ch = _getch();
    if (ch == 'a' and x - 1 > 0) direc = -1;
    if (ch == 'd' and x + 1 < 75) direc = 1;
    if (ch == 's') direc = 0;
    if (ch == ' ' and yBullet < 2) {
        xBullet = x+2;
        yBullet = y;
    }

    fflush(stdin);
}

void drived() {
    setcolor(2,4);
    if((x == 0 or x == 75) and ch == ' ')
        direc = 0;
    if(direc != 0)
        erase_ship(x, y);
    draw_ship(x += direc, y);
    Sleep(50);
}

void Score() {
    setcolor(6, 7);
        gotoxy(68, 0);
            std::cout<<"score : "<<score;
}

void stars(int x, int y, int z) {
    setcolor(7,0);
    if(cursor(x, y) != '*')
        ++z;
    gotoxy(x, y);
    printf("*");
    if(z <= 20)
        stars(rand()%61+10,rand()%4+2,z);
}

void shooting() {
    clear_bullet(xBullet, yBullet);
    if(cursor(xBullet,yBullet-1) == '*') {
        --shoot;
        ++score;
        clear_bullet(xBullet,--yBullet);
        stars(rand()%61+10,rand()%4+2,20);
        yBullet = 1;
    } else if (yBullet == 2)
        --yBullet;
    else draw_bullet(xBullet,--yBullet);
    draw_ship(x, y);

    Beep(500,10);
}

void start() {
    while(1) {
        if (_kbhit()) {
			pressed();
		}

        Score();
        if(yBullet > 1)
            shooting();
		drived();

		if(ch == 'x')
            break;
        ch = ' ';
    }
}

void setup() {
    srand(time(NULL));
    setcolor(2, 4);
	draw_ship(x, y);
	setcursor(0);
	stars(rand()%61+10,rand()%4+2,1);
}

int main() {

	setup();
	start();
	return 0;
}
