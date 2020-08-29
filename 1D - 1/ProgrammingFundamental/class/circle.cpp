#include <iostream>
using namespace std;

class circle
{
private:
    static double pi;

public:
    double area(double redius);
    double perimeter(double redius);
    void show(double redius);
};

double circle::pi = 3.1416;

double circle::area(double redius)
{
    return pi*redius*redius;
}

double circle::perimeter(double redius)
{
    return 2*pi*redius;
}

void circle::show(double redius)
{
    cout<<"Area of the circle is\t\t"<<area(redius)<<endl;
    cout<<"Perimeter of the circle is\t"<<perimeter(redius)<<endl;
}

int main()
{
    circle cir;
    double r;

    cin>>r;

    cir.show(r);

}





