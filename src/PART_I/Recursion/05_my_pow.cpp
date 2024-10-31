#include <iostream>
using namespace std;


int my_pow(int n, int p) {
    if (p == 1) {
        return n * 1; // :D;
    }
    return n * my_pow(n, p-1);
}


int main() {
    int arr[] {1,2,3,4,5};
    cout << "my_pow(5,3) is: " << my_pow(5,3) << endl;
    cout << endl;
    return 0;
}