#include <iostream>
#include <stack>
#include <cmath>
using namespace std;


void reverse_number_using_stack_of_str(int num) {
    stack<char> s;
    string str_num = to_string(num);
    auto it = str_num.begin();
    while (it != str_num.end()) s.push(*it++);
    while (!s.empty()) cout << s.top(), s.pop();
};


void reverse_number_using_stack(int num) {

};


int main() {
    reverse_number_using_stack(12345);
    cout << endl;
    return 0;
}