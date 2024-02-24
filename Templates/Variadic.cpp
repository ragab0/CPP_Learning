#include <iostream>
using namespace std;

// First type of variadic is the variadic function;
// IT is old && us unsafe;
void variadic_function(const int nums...) {
    cout << nums << endl;
};


// Second variadic is the variadic template;
// IT is a modern & safe way instead of variadic functions;
// Arguments called here THE function paramer pack;
// -- BEcarful the (template<typename ...SomeArgs>) is the template parameter pack ( the argu) NOT type;
// -- We can use several types here;
template<typename ...SomeArgs> 
void variadic_template(int a=0, SomeArgs ... args) {
    int sz = sizeof...(args);
    cout << a << endl;
    if (sz > 0) {
        variadic_template(args...);
    };
};


int main() {
    // variadic_function(1,2,3,4);
    variadic_template(1,2,3,4);
    return 0;
};