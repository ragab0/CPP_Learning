#ifndef COURSE_H_
#define COURSE_H_

class UserStudent;
class DoctorStudent;

class Course {
private:
    // I should not pass the doctor User.. there will not be access direct:
    // Done only between the doctor and the usermanager (not direct too :D);
    int auther_id;
    std::set<int> users_registered;
    std::string id_code;
    std::string name;
    std::string details;
    std::string author_name;
public:
    Course(std::string id_code, std::string name, std::string details, std::string author_name, int author_id) 
        : id_code(id_code), name(name), details(details), author_name(author_name), auther_id(auther_id) {
    };

    std::string GetIdCode() {
        return id_code;
    };

    std::string GetTitle() const {
        return name + " - " + id_code;
    };

    int GetAutherId() const {
        return auther_id;
    };
};


#endif