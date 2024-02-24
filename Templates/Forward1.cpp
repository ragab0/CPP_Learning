#include <iostream>
#include <vector>
using namespace std;


class ClassB;

class ClassA {
private:
    vector<ClassB> related_bs;
};

class ClassB {
private:
    vector<ClassA> related_as;
};



int main() {
    return 0;
};