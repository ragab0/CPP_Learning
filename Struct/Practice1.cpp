#include <iostream>
using namespace std;


/**
 * Practice: Our own quueue;
 * - Define our queue class that internaly has an array and supports the following operations:
 * -- Add to end;
 * -- Add to front;
 * -- remove from front;
 * -- print elements;
*/


struct queue {
    int q[10] {0};
    int top = -1;

    void add_end(int val) {
        q[++top] = val;
    };

    void add_front() {
        
    };

    void remove_front() {

    };

    void print() {
        for (int i = 0; i < 10; i++)
        {
            cout << q[i] << "-";
        }
        cout << endl;
    };
};


int main() {

    queue my_queue;
    my_queue.print();

    cout << endl;
    return 0;
}