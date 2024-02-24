#include <iostream>
#include <queue>
using namespace std;


// stack based on a queue;
struct StackBasedQueue {
    queue<int> q;

    void push(int val) {
        int len = q.size();

        q.push(val);
        while (len-- > 0) {
            q.push(q.front());
            q.pop();
        };
    };

    int top() {
        return q.front();
    };

    void freeze() {
        const int len = (int) q.size();
        for (int i=0; i < len; i++) {
            cout << top() << " ";
            q.pop();
        };
        cout << endl;
    }
};


int main() {
    StackBasedQueue sq;
    sq.push(1);
    sq.push(2);
    sq.push(3);
    sq.push(4);
    sq.freeze();
    cout << endl;
    return 0;
};