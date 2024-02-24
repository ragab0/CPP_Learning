//============================================================================
// Name        : PROJECT_04.cpp
// Author      : Legend
// Version     : 1.0.0
// Copyright   : copyright by lg
// Description : Designing an eduactional system to help students and doctors in them journey;
//============================================================================================

#include <iostream>
#include <vector>
#include <unordered_map>
#include <set>
#include <sstream>
#include "./Our_Headers/ErrorsManager.h"
#include "./Our_Headers/Helpers.h"
#include "./Our_Headers/CoursesManager.h"
#include "./Our_Headers/UsersManager.h"

// Creating initial users;
// Register initial data .. BUT BEcarful from the constraints please:
void CreateInitialData()
{
	auto student1{the_users_mngr.Register("ragab eid", "ragab@re.com", 1, "legend", 123)};
	auto student2{the_users_mngr.Register("ahme", "ahme@a.com", 1, "ahme", 12345)};
	auto student3{the_users_mngr.Register("elmtr4m", "elmtr4m@a.org", 1, "elmtr4m", 123456)};
	auto dotctor1{the_users_mngr.Register("The_legend", "thelegend@foc.edu.com", 2, "doclegend", 321)};
	auto dotctor2{the_users_mngr.Register("The_Mayor", "themayor@foc.edu.com", 2, "themayor", 111)};
	the_courses_mngr.CreateCourse("CS50", "CS50 Course", "This course is from harvard uni",
								  dotctor1.GetName(), dotctor1.GetId());
	the_courses_mngr.CreateCourse("CZilla", "Codezilla python Course", "This course is created by islam codezilla",
								  dotctor1.GetName(), dotctor1.GetId());
	the_courses_mngr.CreateCourse("Elzero", "Elzero academy course", "These courses are one of the greatest courses",
								  dotctor1.GetName(), dotctor1.GetId());
	the_courses_mngr.CreateCourse("DS", "Data structures academy course", "These courses are one of the greatest courses",
								  dotctor1.GetName(), dotctor2.GetId());
};

void EducationalManagementSystem()
{
	int accessed = the_users_mngr.AccessSystem();
	if (!accessed)
	{
		std::cout << "It was a good day .. bey!\n";
	};
};

int main()
{
	CreateInitialData();
	EducationalManagementSystem();
	return 0;
};