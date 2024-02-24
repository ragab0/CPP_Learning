#include <iostream>
using namespace std;

int global;

int main() {
    int a{3}, b{6};
    freopen("freopen_read_file.txt", "rt", stdin);
    freopen("freopen_read_file.txt", "wt", stdout);

    cout << a + b << endl;

    cout << endl;
    return 0;
}
