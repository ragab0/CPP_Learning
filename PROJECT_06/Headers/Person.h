#ifndef PERSON_H_
#define PERSON_H_

#include "./BookSet.h"


BookSet BookSetter {};


class Person {
private: 
protected:
    string username;
    int password;
    string name;
    string email;
    // IN derived classes
    // >> username(username_), password(password_), name(name_), email(email_)
    // >> Non-base class to init with the member init list !!! WHY ??;
public:
    Person() {};
    bool IsPassValid(int pass_) 
        const {return password == pass_;};
    string GetUsername() 
        const {return username;};
    void ViewBasicInfo() 
        const {
            cout << endl;
            cout << "Name :" << name << endl;
            cout << "Email :" << email << endl;
            cout << "Username :" << username << endl;
        };
};


#endif