#include <iostream>
using namespace std;

void plusArray(int n, int A[], int B[], int result[])
{
    for(int i=0; i<n; ++i)
        result[i] = A[i] +B[i];
}

int main()
{
    int A[4] = {1,2,3,4};
    int B[4] = {5,6,7,8};
    int result[4];
    int n = sizeof(A)/sizeof(int);

    plusArray(n,A,B,result);

    for(int i=0; i<n; ++i)
        cout<<result[i]<<" ";

}
