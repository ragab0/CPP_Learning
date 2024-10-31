#include <iostream>
using namespace std;


int main() {
    int arr[] {1,2,3};

    /*
     * will give us a temp val when using [] - as index is out of boundry;
     */ 
    cout << arr[-1] << endl;
    cout << arr[111] << endl;

    

    cout << endl;
    return 0;
}
