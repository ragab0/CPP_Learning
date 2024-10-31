#include <iostream>
using namespace std;

int factorial1() {
    return 1;
}

int factorial2() {
    return 2 * factorial1();
}

int factorial3() {
    return 3 * factorial2();
}

int factorial4() {
    return 4 * factorial3();
}

int factorial5() {
    return 5 * factorial4();
}

int factorial6() {
    return 6 * factorial5();
}

int factorial(int n) {
    if (n == 1) {
        return 1;
    }
    return n * factorial(n-1);
}

int main() {
    cout << "Factorial6 is: " << factorial6() << ";" << endl;
    cout << "Factorial(6) is: " << factorial(6) << ";" << endl;
    cout << endl;
    return 0;
}