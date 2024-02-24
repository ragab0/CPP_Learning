#ifndef DOCTOR_H_
#define DOCTOR_H_

#include "./User.h"

class UserDoctor : User {
private:
    std::vector<Course> CreatedCourses;
public:
    UserDoctor() {
        SetIsUserActive(true);
    };

    UserDoctor(User &u) {
        
    };

	void StartSession() {
        while (IsUserActive()) {
            int ch = ShowChooseMenu({
                "List Courses",
                "Create Course",
                "Log Out",
            });

            if (ch == 1) {
                std::cout << "NNN: " << this->GetId() << std::endl;
                the_courses_mngr.PrintCoursesById(this->GetId());
            } else if (ch == 2) {
                // the_courses_mngr.CreateCourseInput(this->GetId(), this->GetName());
            } else {
                EndSession();
            };
        };
	};

    void ListCourses() {};
	void CreateNewCourse() {};
	void ViewCourse() {

    };
};


#endif