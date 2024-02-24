#ifndef ADMIN_H_
#define ADMIN_H_

#include "./Person.h"
#include <vector>
#include <map>


class Admin : public Person {
private:
    map<string, Book*> created_books;

public:
    Admin() {};
    Admin(string username_, int password_, string name_, string email_) {
        username = username_;
        password = password_;
        name = name_;
        email = email_;
        
    };

    void ShowMenu() {
        cout << endl;
    }
    void StartSession() {
        cout << "Welcome admin (your system :D)" << endl;

    };
    void CreateBook() {

    };
    void RemoveBook() {

    };
};


#endif