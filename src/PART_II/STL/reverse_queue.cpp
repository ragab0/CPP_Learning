#include <iostream>
#include <stack>
#include <queue>
using namespace std;


/**
 * Reverse a queue using stack;
*/
template<typename T>
void reverse_queue_using_stack(queue<T> &q) {
    stack<T> s;
    const int len = q.size();
    
    while (!q.empty()) {
        s.push(q.front());
        q.pop();
    };

    while (!s.empty()) {
        q.push(s.top());
        s.pop();
    };
};


void print_queue(auto &qu) {
    const int len = (int) qu.size();
    for (int i=0; i < len; i++) {
        cout << qu.front() << " ";
        qu.pop();
    };
    cout << endl;
};


int main() {
    queue<int> q1;
    queue<char> q2;

    q1.push(1);
    q1.push(2);
    q1.push(3);
    q1.push(4);
    q1.push(5);
    q1.push(6);
    q2.push('a');
    q2.push('b');
    q2.push('c');
    
    reverse_queue_using_stack<int>(q1);
    print_queue(q1);
    reverse_queue_using_stack<char>(q2);
    print_queue(q2);

    cout << endl;
    return 0;
}