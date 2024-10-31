#include <iostream>
using namespace std;


int main() {
    
    string main_str = "ABCDEFGH";
    string sub_str = "ACG";
    int result = false;

    if (sub_str == "") {
        cout << "Result is: " << 1 << endl;
        return 0;
    }

    for (int i=0, j=0; i<main_str.size(); i++) {
        if (sub_str[j] == main_str[i]) {
            if (++j == sub_str.size()) {
                result = true;
                break;
            }
        }
    }

    cout << "Result is: " << result << endl;

    cout << endl;
    return 0;
}