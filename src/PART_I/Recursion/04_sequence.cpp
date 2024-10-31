#include <iostream>
using namespace std;


int len = 0;
int sequence(int n) {
    len++;
    cout << n << endl;
    if (n == 1) {
        cout << "Length is: " << len << endl;
        return n;
    } else if (n % 2 == 0) {
        return sequence(n / 2);
    } else {
        return sequence(n * 3 +1);
    }
}


int main() {
    int arr[] {1,2,3,4,5};
    sequence(5);
    cout << endl;
    return 0;
}