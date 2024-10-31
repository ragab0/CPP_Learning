#include <iostream>
#include "head_01.h"
using namespace std;


int main() {
	int arr[] {1,2,3};
	int* ptr {arr};

	cout << *ptr++ << endl;
 
    return 0;
}
