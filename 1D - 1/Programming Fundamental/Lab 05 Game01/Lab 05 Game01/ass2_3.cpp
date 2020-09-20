#include <iostream>
#include <string.h>
#include <conio.h>
#include <windows.h>
#include <vector>
#include <time.h>

char ch = ' ';
int x = 38, y = 20;
int direc = 0;
int shoot = 0;
int xbullet[40];
int ybullet[40];
int score = 0;
int i=0;
char name[40] = {};
int timer;


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

void war() {
    gotoxy(6,22);
    for(int i=0; i<68; ++i) {
        setcolor(5, 0);
        printf("+");
    }
}

void draw_ship(int x, int y) {
	gotoxy(x, y);
        setcolor(14, 0);
            printf("_o^o_");
}

void erase_ship(int x, int y) {
	gotoxy(x, y);
        setcolor(0, 0);
            printf("     ");
}

void draw_bullet(int x, int y) {
    gotoxy(x, y);
        setcolor(15, 0);
            printf("^");
}

void clear_bullet(int x, int y) {
	gotoxy(x, y);
        setcolor(0, 0);
            printf(" ");
}

void pressed(int x, int y) {
    ch = _getch();
    if (ch == 'a' and x - 1 > 8) direc = -1;
    if (ch == 'd' and x + 1 < 68) direc = 1;
    if (ch == 's') direc = 0;
    if (ch == ' ' and shoot < 10) {
        //Beep(500,20);
        for(int i=0; i<10; ++i) {
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

void intro() {
    setcursor(0);
    char ch = '+';
    while(1) {
    gotoxy(30,7);
        setcolor(2,0);
            printf("  A  \t");
        setcolor(15,0);
            printf("LEFT");
    gotoxy(30,9);
        setcolor(3,0);
            printf("  D  \t");
        setcolor(15,0);
            printf("RIGHT");
    gotoxy(30,11);
        setcolor(4,0);
            printf("  S  \t");
        setcolor(15,0);
            printf("STOP");
    gotoxy(30,13);
        setcolor(5,0);
            printf("SPACE\t");
        setcolor(15,0);
            printf("SHOOT");
        if(_kbhit())
            ch = _getch();
        if(ch != '+')
            break;
    }
    system("CLS");
}

void countTime() {
    gotoxy(34,0);
    printf(" %.2d : %.2d ",(time(NULL)-timer)/1000/60,(time(NULL)-timer)/1000);
}

void drived() {
    //setcolor(5,0);
    if((x == 8 or x == 68) and ch == ' ')
        direc = 0;
    if(direc != 0)
        erase_ship(x, y);
    draw_ship(x += direc, y);
    Sleep(50);
}

void Score() {
    setcolor(0, 14);
        gotoxy(1,0);
            std::cout<<" Name : "<<name<<" ";
        //countTime();
        gotoxy(66, 0);
            std::cout<<" score : "<<score<<" ";

}

void stars(int x, int y, int z) {
    setcolor(rand()%6+9,0);
    if(cursor(x, y) != '*')
        ++z;
    gotoxy(x, y);
    printf("*");
    if(z <= 40)
        stars(rand()%61+10,rand()%4+2,z);
}

int shooting(int shoot) {
    for(int i=0; i<10; ++i) {

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
            stars(rand()%61+10,rand()%4+2,40);
            ybullet[i] = 0;
        }
        else if(ybullet[i] > 2)
            draw_bullet(xbullet[i],--ybullet[i]);

        draw_ship(x,y);
    }
    //soundBullet(shoot);
    return shoot;
}

void setup() {
    srand(time(NULL));
    setcolor(5, 0);
	draw_ship(x, y);
	setcursor(0);
	stars(rand()%61+10,rand()%4+2,1);
	war();
}

void gameStart() {
    for(int k=0 ;k<40; ++k)
        name[k] = 'a';
    setcursor(0);
    int timer = time(NULL);
    gotoxy(27,10);
    setcolor(9,0);
    printf("WELCOME TO SPACE WAR !!!");
    Sleep(1500);
    char ch = 'q';
    setcolor(15,0);
    while(ch != ' ') {
        if (_kbhit())
            ch = _getch();
        gotoxy(33,12);
        printf("Press \"SPACE\"");
        Sleep(100);
        gotoxy(33,12);
        printf("               ");
        Sleep(100);
    }
    system("CLS");
}

void getName() {
    setcursor(1);
    int n = 39;
    gotoxy(20,10);
    setcolor(14,0);
    printf("Enter your name : ");
    setcolor(15,0);
    scanf("%[^\n]",&name);
    system("CLS");
}

void countdown() {
    setcolor(15,0);
    for(int k=3; k>0; --k) {
        gotoxy(40,10);
        printf("%d",k);
        Sleep(900);
        gotoxy(40,10);
        printf(" ");
        Sleep(100);
    }
    gotoxy(37,10);
    printf("START!!");
    Sleep(1000);
    gotoxy(37,10);
    printf("       ");
    Sleep(100);
}

void gameEnd() {
    for(int k=0; k<10; ++k) {
        if(cursor(xbullet[k],ybullet[k]) == '^')
            clear_bullet(xbullet[k], ybullet[k]);
    }
    while(1) {
        char ch = 'q';
        gotoxy(36,11);
        setcolor(14,0);
        printf("YOU WIN!");
        gotoxy(40-strlen(name)/2,9);
        setcolor(15,0);
        printf("%s",name);
        ch = _getch();
        if(ch != 'q' and ch != ' ' and ch != 'a' and ch != 'd' and ch != 's')
            break;
    }
    system("CLS");
}

void start() {
    while(1) {
        if (_kbhit()) {
			pressed(x, y);
		}
        if(score == 50) {
            gameEnd();
            break;
		}

        shoot = shooting(shoot);
        Score();
		drived();

		if(ch == 'x')
            break;
        ch = ' ';
    }
}

void celebration() {

}

int main() {
    gameStart();
    getName();
    intro();
	setup();
	countdown();
	start();
	return 0;
}
