#include <iostream>
using namespace std;

class rectangle
{
public:
    rectangle(double max_w, double max_h);
    ~rectangle();
    void area(double w, double h);
    void perimeter(double w, double h);

private:
    double maxWidth;
    double maxHigh;
};

rectangle::rectangle(double max_w, double max_h)
{
    maxWidth = max_w;
    maxHigh = max_h;
}

rectangle::~rectangle()
{
    cout<<endl<<"Hua Kuy............";
}

void rectangle::area(double w, double h)
{
    if(w <= maxWidth and h <= maxHigh)
        cout<<"Area = "<<w*h<<endl;
    else cout<<"Out of bound"<<endl;
}

void rectangle::perimeter(double w, double h)
{
    if(w <= maxWidth and h <= maxHigh)
        cout<<"Perimeter = "<<2*(w+h)<<endl;
    else cout<<"Out of bound"<<endl;
}

int main()
{
    rectangle rec(30,20);
    double w,h;

    cin>>w>>h;

    rec.area(w,h);
    rec.perimeter(w,h);

    return 0;

}



