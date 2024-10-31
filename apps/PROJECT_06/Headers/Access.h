#ifndef ACCESS_H_
#define ACCESS_H_

#include "./Helpers.h"
#include "./User.h"
#include "./Admin.h"
#include <unordered_map>
#include <vector>

/**
 * We'll seperate the access class into small pieces to handle (practice) the problems of (before polymorphism):
 * -- As it composed of AdminManagement interfaces + UsersManagement Interfaces;
 * -- But the system is small so we'll declare && implement here in access class;
*/


// First piece of access pieces (1/2);
class AdminManagement {
public:
    void RemoveAdmin(const Admin &admin) {};
};


// Second piece of access pieces (2/2);
class UsersManagement {
public:
    void RemoveUser(const User &user) {};
};


// "Collabortation over inheritance principle":
// >> Direct access of books of (users and admins) better than add them into management separated pieces;
class Access : public UsersManagement, public AdminManagement {
private:
    unordered_map<string, User*> users_db;
    unordered_map<string, Admin*> admins_db;
        // Using vector costs us O(n) on searching .....
        // Using unordered map causes error with ptrs .. ref .. even with copying .. (WHAT about smart ptrs ???)
        // BUT our system is small so .. we not a big problem .. not a problem at all
        // GOOD designer who uses .. IDK :D;

public:
    Admin* CreateNewAdmin(string username, int password, string name, string email) {
        Admin* a{new Admin(username, password, name, email)};
        admins_db.insert({username, a});
        PrintAdminCreatedSuccessfuly(username);
        return a;
    };

    User* CreateNewUser(string username, int password, string name, string email) {
        User* u{new User(username, password, name, email)};
        users_db.insert({username, u});
        PrintUserNewCreatedSuccessfuly(username);
        return u;
    };


    // Creating dumy dataout 
    // BEcarful from CONSTRAINTS please .. Sensetive part !! :DD;
    Access() {
        Admin* aa  = CreateNewAdmin("legend", 123, "admin_legend", "legend@admin.com");
        User* u1 =  CreateNewUser("ragab", 111, "user_ragab", "ragab@user.com");
        User* u2 =  CreateNewUser("a_user", 222, "the_user", "theuser@user.com");

        cout << "\n------------------------------------;" << endl;
        BookSetter.AdminAddBook(aa->GetUsername(), "1 C++ how to program", "cpp");
        BookSetter.AdminAddBook(aa->GetUsername(), "2 Intro to algo", "algo");
        BookSetter.AdminAddBook(aa->GetUsername(), "3 Learning data structures in C++", "dss");

        cout << "\n------------------------------------;" << endl;
        BookSetter.UserAddBook(u1->GetUsername(), "cpp");
        BookSetter.UserAddBook(u1->GetUsername(), "algo");
        BookSetter.UserAddBook(u2->GetUsername(), "algo");
        BookSetter.UserAddBook(u2->GetUsername(), "dss");

        cout << "Initial data loaded .. successfuly\n" << endl;
    };

    void Enter(const User *user) {user->StartSession();};
    void Enter(const Admin *admin) {};

    int Login() {
        cout << "Enter username (no space please): ";
            string username;
            username = GetInfinityInputToLength<string>(3);
        cout << "Enter password (no space please): ";
            int password;
            password = GetInfinityInputToLength<int>(3);

        if (auto it = admins_db.find(username); it != admins_db.end()) {
            if ((*it).second->IsPassValid(password)) {
                Enter((*it).second);
                return 1;
            };
        };
        if (auto it = users_db.find(username); it != users_db.end()) {
            if ((*it).second->IsPassValid(password)) {
                Enter((*it).second);
                return 1;
            };
        };
        ErrorsManager::PrintInvalidLogin();
        return 0;
    };

    void Signup() {
        cout << "Enter username (no space please): ";
            string username;
            username = GetInfinityInputToLength<string>(3);
        if (admins_db.find(username) != admins_db.end() || users_db.find(username) != users_db.end()) {
            ErrorsManager::PrintUsernameAlreadyExists();
            return;
        };
        
        cout << "Enter password (no space please): ";
            int password;
            password = GetInfinityInputToLength<int>(3);
        cout << "Enter name (no space please): ";
            string name;
            username = GetInfinityInputToLength<string>(3);
        cout << "Enter email (no space please): ";
            string email;
            username = GetInfinityInputToLength<string>(3);
        cout << "Are you an admin or user (1 => admin, 2 => user): ";
            int type;
            type = GetChooseInt(2);
            
        if (type == 1) {
            Admin *a = CreateNewAdmin(username, password, name, email);
            Enter(a);
        } else if (type==2) {
            User *u = CreateNewUser(username, password, name, email);
            Enter(u);
        };
    };

    void Menu() {
        while (true) {
            int ch = ShowChooseIntMenu("Menu:", {
                "Login",
                "Signup",
            });

            if (ch == 1) {
                Login();
            } else if (ch == 2) {
                Signup();
            };
            // Else if - not just else BECAUSE:
            // May be there will be ch == 3 in future like logout :DDD;
        };
    };

    void RemoveAdmin() {};
    void RemoveUser() {};
};


#endif