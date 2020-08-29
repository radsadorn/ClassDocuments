#include <iostream>
#include <conio.h>
#include <windows.h>
#include <vector>
#include <time.h>

char ch = ' ';
int x = 38, y = 40;
int direc = 0;
int shoot = 0;
int xbullet[5];
int ybullet[5];int score = 0;


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
    if(shoot > 0)
        Beep(500,10);
}

void draw_ship(int x, int y) {
	gotoxy(x, y);
        setcolor(5, 7);
            printf("_o^o_");
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

void clear_bullet(int x, int y) {
	gotoxy(x, y);
        setcolor(0, 0);
            printf(" ");
}

void pressed(int x, int y) {
    ch = _getch();
    if (ch == 'a' and x - 1 > 0) direc = -1;
    if (ch == 'd' and x + 1 < 75) direc = 1;
    if (ch == 's') direc = 0;
    if (ch == ' ' and shoot < 5) {
        Beep(500,20);
        for(int i=0; i<5; ++i) {
             if(ybullet[i] == 0) {
                xbullet[i] = x+2;
                ybullet[i] = y;
                i = 40;
             }
        }
        ++shoot;
    }
    fflush(stdin);
}

void drived() {
    //setcolor(5,0);
    if((x == 0 or x == 75) and ch == ' ')
        direc = 0;
    if(direc != 0)
        erase_ship(x, y);
    draw_ship(x += direc, y);
    Sleep(50);
}

void Score() {
    setcolor(6, 7);
        gotoxy(66, 0);
            std::cout<<" score : "<<score<<" ";
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

int shooting(int shoot) {
    for(int i=0; i<5; ++i) {

        if(ybullet[i]!=0)
            clear_bullet(xbullet[i],ybullet[i]);

        if(ybullet[i] == 2) {
            ybullet[i] = 0;
            --shoot;
        }
        else if(cursor(xbullet[i],ybullet[i]-1) == '*') {
                Beep(800,10);
            --shoot;
            ++score;
            clear_bullet(xbullet[i],ybullet[i]-1);
            stars(rand()%61+10,rand()%4+2,20);
            ybullet[i] = 0;
        }
        else if(ybullet[i] > 2)
            draw_bullet(xbullet[i],--ybullet[i]);

        draw_ship(x,y);
    }
    //soundBullet(shoot);
    return shoot;
}

void start() {
    while(1) {
        if (_kbhit()) {
			pressed(x, y);
		}

        Score();
        shoot = shooting(shoot);
		drived();

		if(ch == 'x')
            break;
        ch = ' ';
    }
}

void setup() {
    srand(time(NULL));
    setcolor(5, 0);
	draw_ship(x, y);
	setcursor(0);
	stars(rand()%61+10,rand()%4+2,1);
}

int main() {

	setup();
	start();
	return 0;
}
