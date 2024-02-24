#ifndef BOOK_H_
#define BOOK_H_

#include <iostream>
#include <map>
#include <set>
using namespace std;

// Forward declaration
class Admin;
class User;


class Book {
private:
    string name;
    string code;
    // Admin *author;
    string author_username; // authr username
    // map<string, User*> registered_users {}; /* user username => *user*/
    set<string> registered_users {}; // users username

public:
    // No msgs here (congrats, successful, ..) because admin can control this book under-hood :D;
    Book(string name, string code, string author_username) 
        : name(name), code(code), author_username(author_username) {
    };

    string GetCode() const {return code;};
    string GetTitl() const {return code +  " - " + name + " - By ";};
    
    void RegisterNewUser(string username, string bcode) {
        if (IsUserRegister(username)) {
            ErrorsManager::PrintBookAlreadyRegisteredTo(username);
        } else {
            registered_users.insert(username);
            PrintBookRegisteredToSuccessfuly(bcode, username);
        }
    };
    bool IsUserRegister(string username) {
        return (int) registered_users.count(username);
    };
    void UnregisterUser(string username) {
        if (IsUserRegister(username)) {
            registered_users.erase(registered_users.find(username));
            PrintUserRemovedSuccessfuly(username);
        };
        ErrorsManager::PrintPersonNotExists(username);
    };
};


#endif