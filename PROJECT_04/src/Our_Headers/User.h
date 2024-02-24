#ifndef USER_H_
#define USER_H_

#include <iostream>
#include <vector>
#include "./Helpers.h"

class User {
private:
    int id;
    int type; // 1 => Student && 2 => Doctor;
	int password;
	std::string username;
	std::string full_name;
	std::string email;
    bool is_active;
public:
    User() {};
    User(int id, int type, int password, std::string username, std::string full_name, std::string email) 
    : id(id), type(type), password(password), username(username), full_name(full_name), email(email),
          is_active(false) {
    };
    
    static std::string Formatter(const std::initializer_list<std::string> &lst) {
		std::string result {};
		auto it = lst.begin();
		while (it != lst.end()-1) {
			result += *it++ + ',';
		};
		return result + *it;
	};

    int GetId() 
        const {return this->id;};
    std::string GetName() 
        const {return this->full_name;};
    int GetType() 
        const {return this->type;};
    int ComparePassword(int pass) 
        const {return pass == this->password;};
    int IsUserActive()
        const {return is_active;};
    void SetIsUserActive(bool v) {
        is_active = v;
    };
    void EndSession() {
        SetIsUserActive(false);
    };
    // int GetAccount() {return type;};
};


#endif