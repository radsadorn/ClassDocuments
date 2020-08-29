#define _CRT_SECURE_N0_WARNINGS 1

#include<stdio.h>
#include<iostream>
#include<windows.h>
#include<conio.h>

void draw_ship(int,int) ;
void gotoxy(int, int);
void erase_ship(int, int);
void setcursor(bool);
void setcolor(int,int);
void eraserfloor(int,int);

int main()
{
    char temp;
    bool visible;
    setcolor(2,4);
    int x = 20, y = 28;
    setcursor(0);
    draw_ship(x,y);


    char ch ='s';
    do
    {

        if (_kbhit())
        {
            temp=ch;
            ch = _getch();
        }
        if(ch == 'a'&&x!=0)
        {
            erase_ship(x, 28);
            draw_ship(--x, 28);
        }
        if(ch == 'd'&&x!=81)
        {
            erase_ship(x, 28);
            draw_ship(++x, 28);
        }

        if(ch == ' ')
        {
            if(y!=28)
            {
                erase_ship(x, y);
            }
            if(y!=0)
            {
                gotoxy(x,--y);
                printf(" ");
                setcolor(2,4);
                printf("l");
            }
            Sleep(50);
        }
        fflush(stdin);
        Sleep(50);
    }
    while(ch!='x');
}

void gotoxy(int x, int y)
{
    COORD c = { x, y };
    SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), c);
}

void draw_ship(int x,int y)
{
    gotoxy(x,y);
    setcolor(2,4);
    printf(" <-0-> ");

}

void erase_ship(int x, int y)
{
    COORD c = { x,y };
    SetConsoleCursorPosition(
        GetStdHandle(STD_OUTPUT_HANDLE), c);
    setcolor(2,0);
    printf("       ");
}

void setcursor(bool visible)
{
    HANDLE console = GetStdHandle(STD_OUTPUT_HANDLE);
    CONSOLE_CURSOR_INFO lpCursor;
    lpCursor.bVisible = visible;
    lpCursor.dwSize = 20;
    SetConsoleCursorInfo(console,&lpCursor);
}

void setcolor(int fg,int bg)
{
    HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(hConsole, bg*16+fg);
}
void eraserfloor(int x,int y)
{
    gotoxy(x,y);
    setcolor(2,0);
}
