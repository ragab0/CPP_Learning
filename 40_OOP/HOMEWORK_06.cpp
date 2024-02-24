#include <iostream>
using namespace std;

/**
 * As we know each data member of any instance has its own address in memory;
 * DOES that work too in class methods (AS they copied to each instance or tney are just ONCE);
 * ANSWER: THEY are just once NOT copied as pointers bounded to it IS read-only (const data);
 * 
*/

class LuckyNumber {
private:
    int num;
public:
    void PrintAddress() {
        printf("Function address: %p\n", &LuckyNumber::PrintAddress);
        printf("Var address: %p\n", &this->num);

    /*
	 * Each object variables will have different address in memory!
	 *
	 * However, function are common procedures
	 * So only one function is loaded in memory with common address
	 */
    
    };
};


int main() {
 
    LuckyNumber lucky1 {};
    LuckyNumber lucky2 {};

    lucky1.PrintAddress();
    lucky2.PrintAddress();

    return 0;
}
