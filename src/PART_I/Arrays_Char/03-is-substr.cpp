#include <iostream>
using namespace std;


int main() {
    
    string main_str = "ABCDEFGH";
    string sub_str = "BCDEFG";
    // string sub_str = "";

    int result = false;
    int j=0;


    for (int i=0; i<main_str.size(); i++) {
        if (sub_str[j] == main_str[i])
            j++;
        else
            j=0;

        // Lol :DD to make the style like above (assigning into the condition statement);
        if (j == sub_str.size() && (result = true))
            break;
    }

    cout << "Result is: " << result << endl;

    cout << endl;
    return 0;
}