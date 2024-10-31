#include <iostream>
using namespace std;


/**
 * DONE
 * 1) Add new employee
 * 2) Print all employees
 * 
 * The idea of coming:
 * 3) 
 * 4) 
*/


int main() {
    // Declaring the arrays of employees;
    int size = 2;
    int ages[size] {};
    int salarys[size] {};
    char genders[size] {};
    string names[size] {};

    // Employee info
    string name;
    char gender;
    int age;
    int salary;
    int top {0};
    int choice;

    while (true) {
        cout << "===================" << endl;
        cout << "1) Add new employee" << endl;
        cout << "2) Print all employees" << endl;
        cout << "3) Delete by age" << endl;
        cout << "4) Update Salary by name" << endl;
        cout << "Enter your choice: ";
        cin >> choice;
        cout << endl;

        if (choice == 1) {
            if (top == size) {
                cout << "Array is full - please remove one to add new" << endl;
                continue;
            }

            cout << "Enter employee:" << endl;
            cout << "01 name (separated_with_underscore): ";
            cin >> name;
            cout << "02 age: ";
            cin >> age;
            cout << "03 salary: ";
            cin >> salary;
            cout << "04 gender (M => Male | F => Female): ";
            cin >> gender;
            cout << "All data now is done" << endl;

            // >> age >> salary >> gender;
            names[top] = name;
            ages[top] = age;
            salarys[top] = salary;
            genders[top] = gender;
            
            ++top;

        } else if (choice == 2) {
            for (int i=0; i<top; i++) {
                cout << "Employee name: " << names[i]
                     << "; age: " << ages[i]
                     << "; salary: " << salarys[i]
                     << "; gender: " << genders[i]
                     << endl;
            }
            cout << endl;
        } else if (choice == 3) {
        } else if (choice == 4) {
        } else {
            continue;
        }
    }

    cout << endl;
    return 0;
}