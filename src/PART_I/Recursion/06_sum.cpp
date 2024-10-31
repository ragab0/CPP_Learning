#include <iostream>
using namespace std;


int sum(int arr[], int len, int start=0) {
    if (start < len) {
        return arr[start] + sum(arr, len, start+1);
    } else {
        return 0;
    }
}


int main() {
    int arr[] {1,2,3,4,5};
    cout << "sum of arr is: " << sum(arr, sizeof(arr) / sizeof(arr[0])) << endl;
    cout << endl;
    return 0;
}