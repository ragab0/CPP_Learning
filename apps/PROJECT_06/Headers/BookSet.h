#ifndef BOOKSET_H_
#define BOOKSET_H_

#include "./MsgsManager.h"
#include "./Book.h"
#include <set>
#include <vector>


// For future (extinsable) :DDD;
// >> MAKE IT SIMPLE STUPID !!!;
class BookSetAdminManagement {};
class BookSetUserManagement  {};


class BookSet : BookSetAdminManagement, BookSetUserManagement {
private:

    // code => book;
    map<string,  Book*> books;

public:
    // Adding direct book
    // BEcarful from constrains .. (len >= 3);
    void AdminAddBook(string username, string bname, string bcode) {
        if (books.find(bcode) != books.end()) {
            ErrorsManager::PrintBookAlreadyExists(bcode);
        } else {
            Book *book {new Book(bname, bcode, username)};
            books.insert({bcode, book});
            PrintBookCreatedBySuccessfuly(bcode, username);
        };
    };

    // Create book manually;
    void AdminCreateBook(string username) {
        string bname;
        string bcode;
        bname = GetInfinityInputToLength<string>(3);
        bcode = GetInfinityInputToLength<string>(3);
        AdminAddBook(username, bname, bcode);
    };

    void AdminRemoveBook(string username, const string code){
        auto book = books.begin();
        if (book != books.end()) {
            PrintBookRemovedBySuccessfuly(code, username);
            books.erase(book);
        } else {
            ErrorsManager::PrintBookNotExists(code);
        };
    };

    void AdminMovingAuthorityTo() {};


    // Adding direct book - automatically added by admin
    void UserAddBook(string username, string bcode) {
        auto book = books.find(bcode);
        if (book != books.end()) {
            (*book).second->RegisterNewUser(username, bcode);
        } else {
            ErrorsManager::PrintBookNotExists(bcode);
        };
    };

    vector<Book*> UserGetRegisteredUnBooks(string username, bool RegisteredUnregistered) {
        auto it = books.begin();
        vector<Book*> registered;
        vector<Book*> un_registered;
        while (it != books.end()) {
            if ((*it).second->IsUserRegister(username)) {
                registered.push_back((*it++).second);
            } else {
                un_registered.push_back((*it++).second);
            };
        };  
        return RegisteredUnregistered ? registered : un_registered;

    };

    void UserRegisterUnBook(string username, bool RegisterUnregister) {
        string bcode;
        bcode = GetInfinityInputToLength<string>(3);

        // Book must be exist to reg\unreg user from its users;
        auto book = books.begin();
        if (book == books.end()) {
            ErrorsManager::PrintBookNotExists(bcode);
            return;
        };

        (RegisterUnregister) ? UserAddBook(username, bcode) : (*book).second->UnregisterUser(username);
    };
};

extern BookSet BookSetter;


#endif