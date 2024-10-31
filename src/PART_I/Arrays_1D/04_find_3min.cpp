#include <iostream>
#include <climits>
using namespace std;


/**
 * Constraints:
 * -- Len is >= 3
 * -- Without change the list and don't iterate over than once (dont order it :D)
*/


int main() {
    int arr[] {5,9,4,1,8,3,0};
    int len {sizeof(arr) / sizeof(arr[0])};
    int mins[] {arr[0], arr[1], arr[2]};
    int temp;

    // Order the mins array from min to max;
    for (int i=0; i<len; i++) {
        for (int j=0; j < 3-1; j++) {
            temp = mins[j];
            if (mins[j] > mins[j+1]) {
                mins[j] = mins[j+1];
                mins[j+1] = temp;
            }
        }
    }

    for (int i=0; i < len; i++) {
        int val = arr[i];
        if (val < mins[0]) {
            mins[2] = mins[1];
            mins[1] = mins[0];
            mins[0] = val;
        } else if (val < mins[1] && val > mins[0]) {
            mins[2] = mins[1];
            mins[1] = val;
        } else if (val < mins[2] && val > mins[1]) {
            //  && val > mins[0] // We dont need it since the mins list is ordered from lower to higher;
            mins[2] = val;
        }
    }

    cout << "Mins are: " << mins[0] << " " << mins[1] << " " << mins[2] << endl;

    cout << endl;
    return 0;
}