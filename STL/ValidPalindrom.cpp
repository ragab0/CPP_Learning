#include <iostream>
#include <map>
#include <stack>
using namespace std;


int main() {
    map<char, char> mp;
    mp.insert({')', '('});
    mp.insert({']', '['});
    mp.insert({'}', '{'});

    // string input="([])({[]})";
    string input="(][)";
    stack<char> record[input.size()];

    for (char &c : input) {
        if (mp.count(c)) {
            if (record->empty() || record->top() != mp[c]) {
                cout << "The " << input << " isn't palind\n";
                return 0;
            } else {
                record->pop();
            }
        } else {
            record->push(c);
        };
    };
    if (record->empty()) {
        cout << "The " << input << " is palind\n";
    } else {
        cout << "The " << input << " is't palind\n";
    }

    return 0;
}