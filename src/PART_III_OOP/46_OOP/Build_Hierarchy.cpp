#include <iostream>

/**
 * Homework 2: Build Hierarchy:
 * ● Design set of classes (no data/functions) to express this classes hierarchy;
*/


class CommunityMemeber {};
    class Alumnus : CommunityMemeber {}; // 01 عاطل may be :D;
    class Student : CommunityMemeber {}; // 02
    class Employee: CommunityMemeber {}; // 03
        class Staff   : Employee {};
        class Faculty : Employee {};
            class Teacher       : Faculty {};
            class Administrator : Faculty {};
                class AdministratorTeacher : Administrator, Teacher {};


int main() {
    return 0;
};