#ifndef HELPERS_H_
#define HELPERS_H_


int ChooseInt(int size=1) {
	int choice {};
	std::cout << "\nEnter Choice: ";
	std::cin >> choice;
	if (!(choice >= 1 && choice <= size)) {
		ErrorsManager::PrintInvalidChoice();
		return ChooseInt(size);
	};
	return choice;
};


// Two action; first for show menu and second for choosing from it (int);
int ShowChooseMenu(const std::initializer_list<std::string> &choices) {
	std::cout << "Please make a choice:\n";
    
    int i = {1};
    auto* it = choices.begin();

	while (it != choices.end()) {
		std::cout << "\t" << i++ << " - " << *it++ << "\n";
	};
	return ChooseInt((int)choices.size());
};


template<typename T>
T CheckInputLengthConstrains(int min_len=0) {
	T param;
	std::ostringstream oss {};
			
	while ((int)oss.str().size() < min_len) {
		std::cin >> param;
		oss << param;
		if ((int)oss.str().size() < min_len) {
			oss.seekp(0);
			ErrorsManager::PrintInputLengthIsShort(3);
		};
	};
	return param;
};


#endif