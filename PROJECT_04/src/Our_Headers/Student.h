#ifndef STUDENT_H_
#define STUDENT_H_

#include "./User.h"

class UserStudent : User {
private:
public:
    std::vector<Course> courses_rigistered_in; // by code;
    UserStudent() {
        SetIsUserActive(true);
    };

	void StartSession() {
        while (IsUserActive()) {
            int ch = ShowChooseMenu({
                "Register In Course",
                "View course of my list courses",
                "Log Out",
            });

            if (ch == 1) {

            } else if (ch == 2) {
                std::cout << "\nMy Courses List:\n";

            } else {
                EndSession();
            };
        };
	};
    void AddCourse() {};
};


#endif