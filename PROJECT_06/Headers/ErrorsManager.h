#ifndef ERRORS_MANAGER_H_
#define ERRORS_MANAGER_H_
#include <iostream>
using namespace std;

class ErrorsManager {
public:

	static void PrintInvalidChoice() {
		cout << "ERROR: Invalid number... try again: ";
	};
	static void PrintInputLengthIsShort(int val) {
		cout << "ERROR: Please enter at least " << val << " of characters\\numbers: ";
	};



	static void PrintPersonNotExists(string username) {
		cout << "ERROR: The (" << username << ") isn't exists!\n" << endl;
	};
	static void PrintUsernameAlreadyExists() {
		cout << "ERROR: Please enter another username: ";
	};
		static void PrintInvalidLogin() {
		cout << "ERROR: The username or password is invalid\n\n";
	};


	static void PrintBookAlreadyExists(string bcode) {
		cout << "ERROR: Book is already exists! (" + bcode + ")\n" << endl;
	};
	static void PrintBookNotExists(string bcode) {
		cout << "ERROR: Book isn't exist - invalid code (" + bcode + ");";
	};
	static void PrintBookAlreadyRegisteredTo(string username) {
		cout << "ERROR: Book is already registered to (" << username << ");" << endl;
	};

};


#endif