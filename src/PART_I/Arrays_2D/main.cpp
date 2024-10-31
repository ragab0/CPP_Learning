#include <iostream>
using namespace std;


int main() {
    /**
     * Array of strings:
     * -- each string/item ends with \0 automatically since the type is string as its constructor works; 
     *
     */
    string names[5] {"123", "234", "345", "444", "555\0 66666"};
    cout << names[4] << endl;

    cout << endl;
    return 0;
}