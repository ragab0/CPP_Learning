#include <iostream>
using namespace std;

/**
 * Constraints: (useful information to make a solution based on that)
 * -- Value <= 0 <= 500; 
*/

int main() {
    int arr[] {0, 1, 1, 2, 2, 2, 5, 6, 6, 7, 8, 9, 9, 9};
    int n = sizeof(arr) / sizeof(arr[0]);
    int new_arr[n] {0};
    int top=0;

    for (int i=0; i < n -1; i++) {
        if (arr[i] != arr[i+1]) {
            new_arr[top++] = arr[i];
        }
    }

    if (arr[n-1] != new_arr[top-1]) {
        new_arr[top] = arr[n-1];
    }

    for (int i=0; i < sizeof(new_arr) / sizeof(new_arr[0]); i++) {
        cout << new_arr[i] << " ";
    }
    
    cout << endl;
    return 0;
}