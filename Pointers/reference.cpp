#include <iostream>
#include <map>
#include <vector>
using namespace std;


struct A {
    int id {5};
};


int main() {

    A a {};
    map<int, A&> m;

    // m[0] = a;
    // cout << &a << endl;
    // m.find(0);

    A *a5 = new A{};
    A *a6 = new A{};

    cout << a5->id << endl;

    cout << &a5 << endl;
    delete a5;
    delete a6;

    cout << &a5 << endl;

    cout << endl;
    return 0;
}