#ifndef COURSEs_MANAGER_H_
#define COURSEs_MANAGER_H_
#include "./Course.h"


class CoursesManager {
protected:
	std::unordered_map<std::string, Course> courses_db;
public:
    CoursesManager() {};

    /**
     * I can't pass a user doctoer directly AS i can't see it yet (header file order);
     * SO in each time i want to create a course by doc i should have a course manager to deal with that
     * without any usage of mine (doc User - CError);
    */
    Course& CreateCourse(std::string id_code, std::string name, std::string details, 
        std::string author_name, int author_id) 
    {
        Course* new_course {new Course(id_code, name, details, author_name, author_id)};
        courses_db.insert({id_code, *new_course});
        return *new_course;
    };

    Course& CreateCourseInput(int author_id, std::string author_name) {
        std::string id_code;
        std::string name;
        std::string details;

        std::cout << "Course_id_code (unique): ";
        id_code = CheckInputLengthConstrains<std::string>(3);
        while (courses_db.find(id_code) != courses_db.end()) {
            ErrorsManager::CourseIsExist();
            id_code = CheckInputLengthConstrains<std::string>(3);
        };
        std::cout << "Course_name: ";
        name = CheckInputLengthConstrains<std::string>(3);
        std::cout << "Course_details: ";
        details = CheckInputLengthConstrains<std::string>(3);

        return CreateCourse(id_code, name, details, author_name, author_id);
    };

    void PrintCoursesById(int id) {
        std::cout << "ID IS: " << id << "\n\n";
	    auto it = courses_db.begin();
        int num_of_mathced_courses;
        while (it != courses_db.end()) {
            if ((*it).second.GetAutherId() == id) {
                num_of_mathced_courses++;
                std::cout << (*it).second.GetTitle() << std::endl;
            };
            it++;
        };
        std::cout << "Num of created courses are: " << (int) num_of_mathced_courses << "\n";
    };

    void PrintCoursesList(std::vector<Course> &lst) {
        const auto it = lst.begin();
        int i=1;
        while (it != lst.end()) {
            std::cout << i++ << ") " + (*it).GetTitle() + "\n";
        };
    }

    Course ShowChooseInput(std::vector<Course> &cos, std::string reason="view") {
        int inp {0};
        while (inp < 1 && inp >(int)cos.size()) {
            std::cout << "Which ith [1 - " << (int)cos.size() << "] courses to " << reason << ": ";
            std::cin >> inp;
        };
        std::cout << cos[inp-1].GetTitle() << "\n";
        return cos[inp-1];
    };
};

static CoursesManager the_courses_mngr {};

#endif