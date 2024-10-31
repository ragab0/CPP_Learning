#include <iostream>
using namespace std;


void array_inc(int arr[], int len, int start=0) {
    cout << arr[start] << " ";
    if (start < len) {
        arr[start] += start;
        array_inc(arr, len, start+1);
    }
}


int main() {
    // int arr[] {1,2,3,4,5};
    int arr[] {1,8,2,10,3};
    array_inc(arr, sizeof(arr) / sizeof(arr[0]));
    cout << "Array_inc is: " << arr[2];
    cout << endl;
    return 0;
}