#include <iostream>
#include <fstream>
using namespace std;


int main() {

    ifstream fin("read_file.txt");

    if (fin.fail()) {
        cout << "Can't open the file" << endl;
        return 0;
    }

    int x, y;
    fin >> x >> y;
    cout << x + y;

    cout << endl;
    return 0;
}
