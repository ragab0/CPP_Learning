#ifndef MSGS_MANAGER_H_
#define MSGS_MANAGER_H_
#include <iostream>
using namespace std;



void PrintBookCreatedBySuccessfuly(string bcode, string username) {
    cout << "Book " << bcode << " is created by " + username + " successfuly;" << endl;
};
void PrintBookRemovedBySuccessfuly(string bcode, string username) {
    cout << "Book " << bcode << " is removed by " + username + " successfuly;" << endl;
};
void PrintBookRegisteredToSuccessfuly(string bcode, string username) {
    cout << "Congrats user! " << bcode << " is registered to you (" + username + ") successfuly;" << endl;
};
void PrintBookUnregisteredFromSuccessfuly(string bcode, string username) {
    cout << "Sadly user! " << bcode << " is now un-registered from you (" + username + ") successfuly;" << endl;
};



void PrintAdminCreatedSuccessfuly(string username) {
    cout << "The Admin (" << username << ") is created successfuly;" << endl;
};
void PrintAdminRemovedSuccessfuly(string username) {
    cout << "The Admin (" << username << ") is removed successfuly;" << endl;
};

void PrintUserNewCreatedSuccessfuly(string username) {
    cout << "User (" << username << ") is created successfuly;" << endl;
};
void PrintUserRemovedSuccessfuly(string username) {
    cout << "User (" << username << ") is removed successfuly;" << endl;
};



#endif