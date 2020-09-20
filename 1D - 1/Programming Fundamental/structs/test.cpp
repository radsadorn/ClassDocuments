#include <iostream>
#include <string>
using namespace std;

typedef struct homework
{
    int work1;
    int work2;
    int work3;
};

typedef struct Student
{
    string name;
    int score;
    homework a;
};

int main()
{
    Student student;

    Student* p;
    p = &student;

    p->name = "Sutthirat";
    p->score = 50;

    p->a.work1 = 10;
    p->a.work2 = 20;
    p->a.work3 = 30;

    cout<<p->name << " get the score : "<<p->score<<endl<<endl;
    cout<<"Homework 1 score : "<<p->a.work1<<endl;
    cout<<"Homework 2 score : "<<p->a.work2<<endl;
    cout<<"Homework 3 score : "<<p->a.work3<<endl;

    return 0;
}
