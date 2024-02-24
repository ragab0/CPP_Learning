#include <iostream>
using namespace std;


int main() {

    // Please enter fardy (odd) number;
    int height = 5;
    for (int i=0; i<height; i++) {
        for (int j=0; j<height; j++) {
            if (j == i || j == height-i-1) {
                cout << "*";
            } else {
                cout << " ";
            };
        };
        cout << endl;
    };

    return 0;
}