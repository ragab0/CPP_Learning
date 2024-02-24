#include <iostream>
#include <cmath>
using namespace std;


int main() {


    int steps {};
    int input {29};
    int sqrt_num {(int)sqrt(input)};
    bool is_prime { input > 1};

    for (int i=2; i<=sqrt_num; i++) {
        if (input % i == 0) {
            is_prime = false;
        }
        steps++;
    }

    cout << boolalpha;
    cout << "Is: " << input << " a prime number? " << is_prime << endl;
    cout << "The operation took num of steps: " << steps << endl;

    cout << endl;
    return 0;
}
