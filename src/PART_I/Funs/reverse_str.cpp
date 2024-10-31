#include <iostream>
using namespace std;


// O(n);
// We can make it O(.5n) by looping just to half and making a swap with start and end;
string reverse_str(const string &str) {
    string reversed_str {};
    for (int i=str.size()-1; i>-1; i--) {
        reversed_str += str[i];
    };
    return reversed_str;
}


int main() {
    string str {"Legend"};
    cout << reverse_str(str) << endl;
    cout << endl;
    return 0;
}
