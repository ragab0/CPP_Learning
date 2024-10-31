#include <iostream>
using namespace std;

/**
 * While Loops Homework 2
 * Problem #1: Print diamond
 * -- Read an integer N, then print diamond of 2N rows as below;
*/


int main() {
    cout << "Read an integer N, then print diamond of 2N rows as below" << endl;
    int input = 5;
    int height = input *2;

    for(int row=0; row < input; row++) {
        for(int c_pos=1; c_pos < height; c_pos++) {
            if (c_pos >= height/2 - row && c_pos <= height/2 + row ) {
                cout << '*';
            } else {
                cout << ' ';
            }
        }
        cout << endl;
    }

    cout << endl;
    return 0;
}