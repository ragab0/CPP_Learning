#include <iostream>
#include <cmath>
using namespace std;


int main() {

    int steps {};
    int all_steps {};
    int sqrt_num {};
    bool is_prime {true};

    cout << boolalpha;
    for (int i=0; i<=500; i++) {
        steps = 0;
        sqrt_num = (int) sqrt(i);
        is_prime = i > 1;

        for (int j=2; j<=sqrt_num; j++) {
            if (i % j == 0)
                is_prime = false;
            steps++;
            all_steps++;
        };
        if (is_prime)
            cout << i << " is a prime num && took " << steps << endl;
        all_steps++;
    };

    cout << "All steps are: " << all_steps << endl;

    cout << endl;
    return 0;
}
