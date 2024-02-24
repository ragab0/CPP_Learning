#include <iostream>
#include <vector>
#include <cmath>
using namespace std;


void sliding_window(const vector<int> &nums, int k) {
    int max_position=(int) nums.size();
    for (int i=0; i+k <= max_position; i++) {
        for (int window_len=0; window_len < k; window_len++)
            cout << nums[i+window_len] << " ";
        cout << endl;
    };
};


int main() {
    sliding_window(vector<int> {1,2,3,4,5,6}, 3);
    cout << endl;
    return 0;
};