#include <iostream>
using namespace std;


double averge(int arr[], int len, int start=0, double sum=0) {
    return sum / len;
}


int main() {
    // int arr[] {1,2,3,4,5};
    int arr[] {1,8,2,10,3};
    cout << "Averge is: " << averge(arr, sizeof(arr) / sizeof(arr[0]));
    cout << endl;
    return 0;
}