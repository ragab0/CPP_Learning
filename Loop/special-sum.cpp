#include <iostream>
using namespace std;


int main() {

    // int arr[] {5,7,2};
    int arr[] {1,2,3,4,0,0,0};
    int len = sizeof(arr) / sizeof(arr[0]);
    int res = 0;
    int tem = 0;

    for (int i=0; i< len; i++) {
        tem = arr[i];
        for (int j=0; j<i; j++) {
            tem *= arr[i];
        }
        res += tem;
    }    

    cout << "The sum is: " << res << endl;

    cout << endl;
    return 0;
}