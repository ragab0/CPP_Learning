#include <iostream>
using namespace std;

/**
 * Practice find all pairs of nums;
 * -- the all pairs of two nums is equal 100 is 100 -1;
 * 
 * since we need to fined a+b=sum; then b=sum-a;
*/


int main() {

    int a = 200;
    int b = 300;
    int sum = 70;
    int pairs = 0;

    /** O(n**2); */
    // for (int ia=1; ia<a; ia++) {
    //     for (int ib=1; ib<b; ib++) {
    //         if (ia + ib == sum) pairs++;
    //     }
    // }

    /** O(N); */
    for (int ia=1; ia<a; ia++) {
        int ib = sum-ia;
        if (ib >= 1 && ib <=sum) pairs++;
    }

    cout << "The num of pairs are: " << pairs << endl;

    cout << endl;
    return 0;
}