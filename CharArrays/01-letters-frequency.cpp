#include <iostream>
using namespace std;


/**
 * Ignore upper and compute the frequency of lower;
*/


int main() {

    string name = "bAAAaaazz";
    int name_sz = name.size(); // compute the size only once;
    int freq[26] {0}; // 26 letter

    for (int i=0; i < name_sz; i++) {
        char curr_char = name[i];
        if (curr_char >= 'a' && curr_char <= 'z')
            freq[curr_char - 'a']++;
    }

    for (int i=0; i < sizeof(freq) / sizeof(freq[0]); i++) {
        int curr_int = freq[i];
        if (curr_int) 
            cout << char('a' + i) << " repeated: " << curr_int << endl;
    }

    cout << endl;
    
    return 0;
}