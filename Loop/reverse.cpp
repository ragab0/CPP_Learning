#include <iostream>
using namespace std;

int main() {

    int input = 30100;
    int number = 0;
    int zeros = 0;

    while (input > 0) {
        int last_digit = input % 10;
        if (last_digit == 0) zeros++;
        input = input / 10;
        number = number * 10 + last_digit;
    }

    cout << number << " and " << number * 3;

    cout << endl;
    return 0;
}