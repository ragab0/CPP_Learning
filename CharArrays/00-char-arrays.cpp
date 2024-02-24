#include <iostream>
using namespace std;


int main() {

    // an intro
    cout << 'A' << " internally is just the num: " << (int)'A' << endl;
    cout << 'a' << " internally is just the num: " << (int)'a' << endl;
    cout << 'a' << " is also 'A'+26+6: " << 'A' + 26 +6 << endl;
    cout << 'a' << " is also " << (char)97 << endl;
    cout << "============================" << endl;


    // Initialization (3Ways):
    char name1[7] {'L', 'e', 'g', 'e', 'n', 'd'};
    char name2[7] = "Legend";
    string name3 = "Legend";

    cout << "Name in way 01 is: " << name1 << endl;
    cout << "Name in way 02 is: " << name2 << endl;
    cout << "Name in way 03 is: " << name3 << endl;
    cout << "============================" << endl;


    // Array of strings:
    string names[5] {"123", "234", "345", "444", "555"};
    cout << "Names are: " << sizeof(names) / sizeof(names[0]) << endl;

    cout << endl;
    return 0;
}