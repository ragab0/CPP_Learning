#include <iostream>
using namespace std;

int main() {

    // int arr[] {1,2,3,4,5,6,7,8,9};
    int arr[] {1,2,3,4,5,6,7,8};
    int arr_length = sizeof(arr) / sizeof(arr[0]);
    int steps = 0;
    int temp;

    for (int i=0; i < arr_length / 2; (i++, steps++)) {
        int oposite_end = (arr_length - 1) - i;
        temp = arr[i];
        arr[i] = arr[oposite_end];
        arr[oposite_end] = temp;
    }

    cout << "arr after reversing: [";
    for (int i=0; i < arr_length; i++) {
        cout << arr[i] << ", ";
    }
    cout << "]" << endl << "Steps are: " << steps << endl << endl;

    return 0;
}