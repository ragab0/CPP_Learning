#include <iostream>
using namespace std;


/**
 * 01 print_tringle;
 * 02 print_tringle_reverse;
 * 03 print_tringle_reverse_by_swaping_trick;
 *    Swapping the logic with the printing call;
 *    The end of logic gives us the lowest number (start from bottom) and then go up print from there to top number;
 * 
*/


void print_tringle(int height) {
    for(int x=0; x<height; x++) {
        cout << "*";
    }
    cout << endl;
    if (height > 0) print_tringle(height-1); 
}


int main() {
    print_tringle(5);
    cout << endl;
    return 0;
}