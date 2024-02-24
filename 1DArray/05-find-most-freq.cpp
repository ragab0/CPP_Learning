#include <iostream>
using namespace std;


/**
 * Constraints:
 * -- nums are [-500 : 270];
 * -- don't use nested loop please;

*/


int main() {

    int x {500 + 270};
    int arr[x] {-500,-500,-500,-5};
    int freq[x+1] {};
    for (int i {5}; i<x; i++) arr[i] = i; // Fill the array with un-repeated nums;

    for (int i{}, v{}; i<x; i++) {
        v = arr[i] + 500;
        freq[v]++;
    }

    int most_val {}; // current_index - 500;
    int most_rep {}; // freq[current_index];
    for (int i{}, repetition{}; i<x+1; i++) {
        repetition = freq[i];
        if (repetition > most_rep) {
            most_rep = repetition;
            most_val = i - 500;
        }
    }

    cout << "The value: " << most_val << " Repeated " << most_rep;

    cout << endl;
    return 0;
}