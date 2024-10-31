#include <iostream>
using namespace std;


/**
 * 
 * 1- Initialize the structure
 * 2- Creating the array of gathering;
 * 
 * 3- Instanciating an instance and add it (WAY_01);
 * 3- Instanciating an instance and add it (WAY_02) "sequence by order";
 * 3- Instanciating an instance and add it (WAY_03) "writing || re-writing BY reference";
 * 4- Instanciating an instance and add it (WAY_04) "writing || re-writing BY reference" BY its method LIKE WAY2;
 * 
 * 4- Accessing;
 * 4- Default Accessing (index 0);
 * 
 * 5- print the instances by looping on the array of gethering;
 * 5- print the instances by looping on the array of gethering (BY reference - no copying - better berformence);
 * 
 * 
 * --------------------------------------
 * 1- We can use methods inside structrs;
 * 2- We can use another structures insdide our structure;
 * 3- Constructor is the method without a return type and called only on the creation of an obj;
 * 
*/


// Defining a struct \ a data type;
// We use this data type by instanciate from it (Instance an objects of it);
// Its a data type BUT a user-defined data type (NOT a primary data type);
// A way to collect memeber data (a way to gather together the relivent variables in something \ in a data type);
struct employee 
{
    // We can add here many features as we allowed the program to grow-up with minimal changes;
    string name {"Legend"};
    int age {20};
    double salary {4400};
    char gender {'M'};

    void add_employee_way4(string the_name="Legend", int the_age=20, double the_salery=4400, char the_gender='M') {
        name = the_name;
        age = the_age;
        salary = the_salery;
        gender = the_gender;
    };
};


// Creating an array to gather the instances together of the type of our structure;
// All elements are now the default values of the structure;
// Addedd for Covering the tracker of instances length;
employee employees_arr[10000];
int addedd = 0;


// Creating a new instance and adding it to the array of gathering WAY2;
void add_employee_way2(string the_name="Legend", int the_age=20, double the_salery=4400, char the_gender='M') {
    employees_arr[addedd].name = the_name;
    employees_arr[addedd].age = the_age;
    employees_arr[addedd].salary = the_salery;
    employees_arr[addedd].gender = the_gender;
    addedd++;
}


// Creating a new instance and adding it to the array of gathering WAY3;
void add_employee_way3(employee e, string the_name="Legend", int the_age=20, double the_salery=4400, char the_gender='M') {
    e.name = the_name;
    e.age = the_age;
    e.salary = the_salery;
    e.gender = the_gender;
}


int main() {
    // Creating and adding (WAY01);
    employee first_instance = {"Leg", 15, 0};
    employees_arr[addedd++]= first_instance;
    // Creating and adding (WAY_02);
    add_employee_way2();
    // Creating and adding (WAY_03);
    add_employee_way3(employees_arr[addedd++]);



    // Accessing the objs
    cout << first_instance.name << endl;
    cout << employees_arr[0].name;
    // Indecates to first element as the adress of arr is the adress of first element;
    cout << employees_arr->name << endl;


    cout << endl;
    return 0;
}