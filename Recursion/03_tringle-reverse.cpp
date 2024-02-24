#include <iostream>
using namespace std;


int level = 1;
void print_tringle_reverse(int height) {
    for(int x=0; x<level; x++) {
        cout << "*";
    }
    cout << endl;
    level++;
    if (height > 1) print_tringle_reverse(height-1); 
}


void print_tringle_reverse_by_swaping_trick(int height) {
    if (height > 0) print_tringle_reverse_by_swaping_trick(height-1); 
    for(int x=0; x<height; x++) {
        cout << "*";
    }
    cout << endl;
}


int main() {
    print_tringle_reverse(5);
    print_tringle_reverse_by_swaping_trick(5);
    cout << endl;
    return 0;
}