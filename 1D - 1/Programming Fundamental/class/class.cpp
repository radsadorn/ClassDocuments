#include <iostream>
using namespace std;

class rectangle
{
    public:
        double area(double width, double high);
        double perimeter(double width, double high);
};

double rectangle::area(double wigth, double high)
{
    return wigth+high;
}

double rectangle::perimeter(double width, double high)
{
    return 2*(width+high);
}

int main() {

    rectangle rect;
    double w,h;

    cin>>w>>h;

    cout<<"Area of rectangle is \t"<<rect.area(w,h)<<endl;
    cout<<"Perimeter of rectangle is \t"<<rect.perimeter(w,h)<<endl;
}
