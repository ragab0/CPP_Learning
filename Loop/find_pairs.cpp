#include <iostream>
using namespace std;


/**
 * Constraints:
 * -- all pairs ;
 * -- x<y;
*/


int main() {

    int pairs {};
    int x[251] {};
    int y[331] {};
    for (int i=0; i<251; i++)
        x[i] = i + 50;
    for (int i=0; i<331; i++) 
        y[i] = i + 70;


    for (int i=0; i<251; i++) {
        int val_x = x[i]; // 50
        for (int j=0; j<331; j++) {
            int val_y = y[j]; // 70 71 ... 400;
            if (val_x < val_y && (val_x + val_y) % 7 == 0 ) {
                pairs++;
            };
        };
    };

    cout << "The number of pairs that apply division by 7 are: " << pairs << endl << endl;    

    return 0;
}