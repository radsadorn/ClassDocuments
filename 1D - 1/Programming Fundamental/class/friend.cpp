#include <iostream>
using namespace std;

class text
{
    friend void changeX(text t, int newX);

public:
    void showX();

private:
    static int x;

};

int text::x = 5;

void text::showX()
{
    cout<<x<<endl;
}

void changeX(text t, int newX)
{
    t.x = newX;
}

int main()
{
    text t;
    t.showX();

    cout<<endl;
    changeX(t, 50);
    t.showX();
}




