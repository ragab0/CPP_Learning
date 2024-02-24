#include <iostream>
using namespace std;

/**
 * Practice: Find most frequent number - FASTER;
 * -- Max number in the array on n size is 150; 
 * -- SO the size of frequency array will be 150+1;
*/


int main() {
    int freq[151] = {0};
    int arr[] {1,1,5,5,7,8,1,6,6,6,6,6};

    for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++) {
        int val = arr[i];
        freq[val]++;
    }

    int counter=freq[0];
    int the_number_is = arr[0]; // j is the number in freq array;
    for (int j=0; j < sizeof(freq) / sizeof(freq[0]); j++) {
        int repeated = freq[j];
        if (repeated > counter) {
            counter = repeated;
            the_number_is = j;
        }
    }

    cout << "The number: " << the_number_is << " repeated: " << counter << " times" << endl;
    return 0;
}