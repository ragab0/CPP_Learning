#ifndef USER_H_
#define USER_H_

#include "./Person.h"
#include <vector>
#include <set>
#include <map>


class User : public Person {
private:
    // map<string, string> book_data;

public:
    User(string username_, int password_, string name_, string email_) {
        username = username_;
        password = password_;
        name = name_;
        email = email_;
    };

    void RegisterBook(const Book &book) {};
    void UnregisterBook(string code) {};

    void StartSession() const {
        cout << "\nWelcome | User View\n" << endl;
        while (true) {
            int ch = ShowChooseIntMenu("Menu:", {
                "View Profile;",
                "Select & continue reading one from my bookshelf;",
                "Select & register one (from unregistered) from the library;",
                "Select & Unregister book;",
                "Logout;",
            });
            
            if (ch == 1) {
                ViewBasicInfo();
            } else if (ch == 2) {
                // Show registered
            } else if (ch == 3) {
                // Show un-registered
                BookSetter.UserRegisterUnBook(username, true);
            } else if (ch == 4) {
                // Show registered
                BookSetter.UserRegisterUnBook(username, false);
            } else  {
                break;
            };
        };
        cout << "Bey | " << GetUsername() << endl << endl;
    };
};


#endif