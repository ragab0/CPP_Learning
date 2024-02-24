#include <iostream>
using namespace std;


int main() {

    int n = 10;
    int a = 0;
    int b = 1;
    int c;

    cout << a << " " << b << " ";

    for (int i=2; i<n; i++) {
        c = a+b;
        a = b;
        b = c;
        cout << c << " ";
    }
    cout << endl;

    cout << endl;
    return 0;
}