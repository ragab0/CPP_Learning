#include <iostream>
using namespace std;


class Cls {
private:
    int* val1;
    int val2;
public:
    Cls(int x=3, int y=5) {
        val1 = new int(x);
        val2 = y;
    };

    void print() {
        cout << "Val1 is: " << *val1 << " Reference: " << val1 << endl;
        cout << "Val2 is: " << val2 << " Reference: " << &val2 << endl;
        cout << endl;
    }

    ~Cls() {};
};


int main() {

    Cls a {};
    Cls b {10, 20};
    a.print();
    b.print();
    
    b = a;
    b.print();

    cout << endl;
    return 0;
};
