#include <iostream>
using namespace std;


int main() {

    int seq[200] {0,1,3,6,2,7};
    int top {5};
    int last_seq_item {seq[top]};

    int freq[200] {};
    for (int i=0; i<top; i++)
        freq[seq[i]]++;


    for (int i=1; i<200; i++) {
        if ((last_seq_item - top -1 > 0 && freq[i] == 0)) {
            seq[top++] = i;
            freq[i]++;

            cout << last_seq_item - top -1 << " ";
        } else if (last_seq_item + top +1 == 13) {
            cout << last_seq_item + top + 1 << " ";
        }
    }


    cout << endl;
    return 0;
}
