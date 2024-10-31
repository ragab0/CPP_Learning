#include <iostream>
using namespace std;

/**
 * Value <= 0 <= 500; 
*/

int main() {
    int arr[] {1,2,3,2,1};
    int n = sizeof(arr) / sizeof(arr[0]);
    int result = true;

    for (int i=0, j=n-1; i<n/2; i++, j--) {
        cout << arr[i] << "-" << arr[j] << " ";
        if (arr[i] != arr[j]) {
            result = false;
        }
    }
    cout << endl;
    cout << "Is_palindrom: " << result << endl;

    cout << endl;
    return 0;
}