#include <iostream>
using namespace std;


int main() {

    string str = "111222aabbbcd";

    // First letter and try to complete on it;
    cout << str[0];
    for (int i=1; i<str.size(); i++) {
        if (str[i] == str[i-1]) {
            // Ok pro complete it :D;
            cout << str[i];
        } else {
            cout << " " << str[i];
            // Start a new letter and try to complete on it;
        }
    }

    cout << endl;
    return 0;
}