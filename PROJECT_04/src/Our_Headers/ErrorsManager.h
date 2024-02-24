#ifndef ERRORS_MANAGER_H_
#define ERRORS_MANAGER_H_


class ErrorsManager {
public:
	static void PrintInvalidChoice() {
		std::cout << "ERROR: Invalid number... try again: ";
	};
	static void PrintInvalidLogin() {
		std::cout << "ERROR: The username or password is invalid\n\n";
	};
	static void PrintInputLengthIsShort(int val) {
		std::cout << "ERROR: Please enter at least " << val << " of characters\\numbers: ";
	};
	static void UsernameIsAlreadyExists() {
		std::cout << "ERROR: Please enter another username: ";
	};
	static void CourseIsExist() {
		std::cout << "ERROR: Course is exist (id_code);";
	};
};


#endif