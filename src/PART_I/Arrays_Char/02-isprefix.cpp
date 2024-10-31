#include <iostream>
using namespace std;


int main() {
    
    string main_str = "ABCDEFGH";
    string sub_str = "AB";
    // string sub_str = "";

    int result = true;

    if (sub_str.size() > main_str.size()) {
        cout << "Result is: " << 0 << endl;
        return 0;
    }

    for (int i=0; i<main_str.size(); i++) {
        if (i >= sub_str.size()) break;
        if (sub_str[i] != main_str[i]) {
            result=false;
            break;
        }
    }

    cout << "Result is: " << result << endl;

    cout << endl;
    return 0;
}