#include <iostream>
using namespace std;


int main() {

    int a1;         // (uninit - undefined value - garbage value => DEFAULT init for primitives) !!!?;
    int a2=0;       // int with 0;
    int a3(0);      // 
    int a4=int();   // 
    int a5{};       // 
    int a6{0};      // 
    int a7={0};     // 
    int a8=(0);     // 
    int a9();       // DECLARATION FOR FUNCTION how it returns 1 !!; 

    cout << a1 << a2 << a3 << a4 << a5 << a6 << a7 << a8 << a9 << endl;

    // Warning when we init a new var by different type with the uniform;
    double z = 10;
    int z1 {z};
    cout << z1 << endl;

    cout << endl;
    return 0;
}