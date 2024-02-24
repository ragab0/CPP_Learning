#include <iostream>
using namespace std;

int main() {
    int is_increasing = true;
    int arr1[] {1,2,2,3,4};
    int arr2[] {1,2,0,3};
    int arr3[] {-10,10};
    int arr[] {5};

    for (int index=0; index < (sizeof(arr1) / sizeof(arr1[0]) -1); index++) {
        if (arr1[index+1] < arr1[index]) {
            is_increasing = false;
            break;
        }
    }

    // std::boolalpha;
    cout << "Is_increasing: " << is_increasing << endl << endl;

    return 0;
}