#ifndef USERs_MANAGER_H_
#define USERs_MANAGER_H_
#include "./Student.h"
#include "./Doctor.h"
static int tracker_id {0};


class UsersManager {
private:
	std::unordered_map<std::string, User&> users_db;
public:
    UsersManager() {};

    void In(User *u) {
        if ((*u).GetType() == 1) {
            std::cout << "\nHello student!\n\n";
        } else {
            std::cout << "\nWelcome doctor!\n\n";
            // UserDoctor udoctor = u;
            // udoctor.StartSession();
        };
    };

	int In(std::string username="", int password=0) {
        std::cout << "Username: ";
        std::cin >> username;
        std::cout << "Password: ";
        std::cin >> password;
        
        auto it = users_db.find(username);
        if (it != users_db.end() && (*it).second.ComparePassword(password)) {
            In(&(*it).second);
        } else {
            ErrorsManager::PrintInvalidLogin();
            return 0;
        };
		return 1;
	};

    /**
     *01 username is unique && >= 3;
     *02 password && mail && full_name >= 3;
     *03 type is either 1 => student or 2 => doctor;
    */
    User& Register(std::string full_name, std::string email, int type, std::string username, int password, bool in=false) {
        User* new_user {new User(++tracker_id, type, password, username, full_name, email)};
        users_db.insert({username, *new_user});
        if (in == true) {
            In(*new_user);
        };
        return *new_user;

    };


	int Up() {
        int type;
        int password;
        std::string username;
        std::string email;
        std::string full_name;

		std::cout << "Full_name: ";
        full_name = CheckInputLengthConstrains<std::string>();
        std::cout << "Email: ";
        email = CheckInputLengthConstrains<std::string>();
        std::cout << "User Type (1=> Student, 2=> Doctor) ";
        type = ChooseInt(2);
        std::cout << "Username: ";
        username = CheckInputLengthConstrains<std::string>();
        while (users_db.find(username) != users_db.end()) {
            ErrorsManager::UsernameIsAlreadyExists();
            username = CheckInputLengthConstrains<std::string>();
        };
        std::cout << "Password: ";
        password = CheckInputLengthConstrains<int>();


        Register(full_name, email, type, username, password, true);
		return 1;
	};

	int AccessSystem() {
        while (true) {
            int choice = ShowChooseMenu({"Login", "Signup", "Shutdown System"});
            if (choice == 1)
                In();
            else if (choice == 2)
                Up();
            else
                return 0;
        };
	};
};

static UsersManager the_users_mngr {};

#endif