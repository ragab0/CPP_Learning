#include <iostream>
using namespace std;


int max_utilize(int a=0, int b=0, int c=0, int d=0, int x=0, int y=0) {
    return max(a, max(b, max(c, max(d, max(x, y)))));
}


int main() {
    cout << max_utilize(5,9,1,6,4,10) << endl;
    cout << endl;
    return 0;
}
