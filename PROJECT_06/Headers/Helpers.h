#ifndef HELPERS_H_
#define HELPERS_H_

#include "./ErrorsManager.h"
#include <sstream>


int GetChooseInt(int size=1) {
	int choice {};
	cout << "\nEnter number in range 1 - " << size << ": ";
	cin >> choice;
	if (!(choice >= 1 && choice <= size)) {
		ErrorsManager::PrintInvalidChoice();
		return GetChooseInt(size);
	};
	return choice;
};


int ShowChooseIntMenu(const string title, const initializer_list<string> &choices) {
	cout << title << "\n";
    
    int i = {1};
    auto* it = choices.begin();

	while (it != choices.end()) {
		cout << "\t" << i++ << " - " << *it++ << "\n";
	};
	return GetChooseInt((int)choices.size());
};


template<typename T>
T GetInfinityInputToLength(int min_len=0) {
	T param;
	ostringstream oss {};
			
	while ((int)oss.str().size() < min_len) {
		cin >> param;
		oss << param;
		if ((int)oss.str().size() < min_len) {
			oss.seekp(0);
			ErrorsManager::PrintInputLengthIsShort(3);
		};
	};
	return param;
};



#endif
