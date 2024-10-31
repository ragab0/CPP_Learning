#include <iostream>
#include <climits>
using namespace std;


// Practice 2 Fined first and 2nd Maximum values !! Array size > 1
int main() {
    // int arr[] {-9,-8,-7,0,1,2,3,4,5,6,7,8,9};
    // int arr[] {6,7,8,9,-9,-8,-7,0,1,2,3,4,5};
    // int arr[] = {6, 7, 8, 9, 1, 2, 3, 4, 5};
    // int arr[] = {-9, -8, -7, -6, -5, -4, -3, -2, -1};
    // int arr[] {-9, -8, -7, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    // int arr[] = {6, 7, 8, 9, 9, 8, 7, 6, 5};
    int arr[] {55,5,5,5};

    int first_max, second_max;

    if (arr[0] > arr[1]) {
        first_max = arr[0];
        second_max = arr[1];
    } else {
        first_max = arr[1];
        second_max = arr[0];
    }

    for (int i=0; i < sizeof(arr) / sizeof(int); i++) {
        int curr = arr[i];
        if (curr > first_max) {
            second_max = first_max;
            first_max = curr;
        }

    }
    cout << "First max is: " << first_max << "\nAnd second max is: " << second_max << endl;

    return 0;
}


