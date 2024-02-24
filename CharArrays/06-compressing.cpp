#include <iostream>
using namespace std;


int main() {

    string str = "aaabbbb";

    if (!str.size()) {
        return 0;
    }

    int j = 1;
    for (int i=1; i<str.size(); i++) {
        if (str[i] == str[i-1]) {
            j++;
        } else {
            cout << str[i-1] << j << "_";
            j=1;
        }
    }
    cout << str[str.size() -1] << j;


    cout << endl;
    return 0;
}