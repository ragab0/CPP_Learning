===== Configuring the compiler =====
We can select a specific compiler 
	in Eclipse by adding at C/C++ Build(Settings(Miscellaneous)):
	in Codeblocks by adding at Menu(GCSettings(Selecting GNU GCC Compiler and then (Toolchain Executable(C++ Cimpiler))))
	--std=c++11 For the version 11 of C++;
	--std=c++14 For the version 14 of C++;
	--std=c++17 For the version 17 of C++;
Knowing the version of current compiler:
	201703L for C++17;
	201403L for C++14;
	201103L for C++11;
	199711L for C++98;


===== the C++ Program Life Cycle =====
01 "Writting" the Code;
02 "Compiling" it;
03 IF there is no any "CError" then "Generatting" the Program;
04 "Running" the Program - the Executable/ACTIVE file;


===== the Error types && Warning =====
>> the return 0 tells the compiler we're done, there is no any error;
01 the Compile error - when we violate the language syntax rules!
02 the Run time error - when the syntax is good, but the program crashes due to error during running;
	## the Dividing by zero;
03 the Compiler warning is better to solve it even if it doesn't stop the compiler to build the exe;
	## the Overflow warning;



===========================
===== 03 the Printing =====
===========================
>> the "code tracing" means tracing the code line by line and actting like a compiler (analysis for youself) :D;
	pass over the code line by line && execute it - desciding what the compiler is going to do;
>> the "<<" merges the commands in ONE command as an ARGU for the used method;
>> the "endl" && "\n" are same;
>> the "//" && "/**/" are same;




=====================================
===== 04 the Data types && Vars ===== && "the ConsoleReadingWrite";
=====================================
Is the data the new oil of the Digital Economy?
>> the data type - We vs Programming:
	## 52           for us it is a "number" && for C++ is an "int";
	## 12.0         for us it is a "number" && for C++ is a "double"/"float";
	## 'z'          for us it is a "letter" && for C++ is a "char";
	## "computer"   for us it is a "word" && for C++ is a "string" (Sequence of characters);
	## Male\Female? for us it is a "status" of 2 things && for C++ is a "Bool";
>> the "computer memory RAM":
	>> the var/box in RAM has 01 Address location 02 Type 03 name 04 value;
>> the data type has "min" and "max" values to store:
	>> If we tried bigger value => overflow;
	>> If we tried lower value => underflow;



the vars:
=========
01 the "Declaration":
	## int age "Un-initialized: (Garbage value)";
02 the "Definition": 
	>> the details of implementation (stores in memory);
03 the "Initialization":
	01 the "C-Style initialization" - "the popular":
		## int age = 50 ;
	02 the "Constructor initialization":
		## int age ( 50 )
	03 the "C++ initialization list style" - "the modern && preferred one";
		## int age { 50 };

the "constant" vars:
	>> they are initialized directly in one statement;
	&& they are used to disallow mutation && to clear intentions;


the "cout <<" && "cin >>"  methods:
===================================
they are used to [writeOutput from / readInput into] the console;
	## cin >> A_Declared_VAR "the compiler FREEZES here .. waits us";

>> the "cin" with: 
	>> with "multi input":
		## cin >> A_Declared_VAR1 >> A_Declared_VAR2 ..;
	>> with "multi spaces";
		.. "two ways based on the datatype - first is usually used";
		01 getline(cin, name1) 		// if we used the data type string name1 which detects the size automatically;
		02 cin.getline(name2, sz)  // if we used the data type char name2[50];


the Escape  Characters:
=======================
>> they are start with \:
	>> \n = new line;
	>> \t = tab;
	>> \0 = null;
	>> \” = “;





===================================================
===== 05 the Operators [Unary,Binary,Ternary] =====
===================================================
the "operand":
	>> it is the value that operator will apply on [x, y, 1, 2,];
the "expression":
	>> it computes && produces a value;
	&& it can be a part of a statement;
	## int y = x+2;
the "statement":
	>> it performs an action && doesn't produce a value;
   && it ends with the "statement terminator" which is "the semicolon";
	## int x = 5;



the Precedence && Associativity && Order of evaluation:
-------------------------------------------------------
the "Precedence":
	>> the order of operations (NOT evaluation) in expressions that contain more than one operator;
	>> We can use parentheses to force order / resolve ambiguity;
	>> Find some deepest parentheses, compute its expression: and so on till no parentheses

the "Associativity-LR":
	-- Grouping the operator of the same priority either from Left or from Right
		After (evaluate operands/subexpressions);
	-- Left-to-right associativity Grouping from left to right:
		[Arithmetic operators, and the comma operator];
	-- Right-to-Left associativity (Grouping from right to left): 
		[Assignment, and the compound operators];
	## The main expression (A - B - C):
	.. Left to right associativity (A - B) - C ==> Let A/B/C be a subexpression to be evaluated independently;
	.. "Compiler Evaluation: there are 6 ways to evaluate them [ABC, ACB, BAC, BCA, CAB, CBA]";

-the Undefined behavior until C++17:
	## cout << i << " " << i++;
	.. SEARCH_ON "Undefined, Unspecified, and implementation-defined behavior";
	.. "Order of evaluation - side-effect (a change in state from one expression)";


the Short-Curcuit Evaluation:
-----------------------------
-It evaluates till a point that stopes on and doesn't evaluate anything coming;
--It Discards what can be discard;





the Operators  Types:
=====================
01 the "unary operators" which require one operand:
	## [++, --, !];
02 the "binary operators" which require two operands:
	## the "Arithmitic"/"traditional" operators: [+, -, /, *, %];
	## the "Relational"/"Comparison" operators: [<, >, <=, >=, ==, !=];
	## the "Logical" operators: [!, ||, &&];
	## the "Bitwise" operators: [&, |, <<, >>, ~, ^];
	## the "Assignment" && "Compound assignment with binary" operators: [=, =BinaryOperator];
	## the "Comma" operator: (,) :DD;
03 the "ternary" operators which require three operands:
	## the "Conditional" operator: (?:);



the [Prefix, Postfix] Unary Operators [++, --]:
===============================================
>> the prefix(before):
	>> it inc\dec firstly && return the new value;
!! BEcarful "bad behavior - ends with undefined IN OLD VERSIONS":
	## a++ + ++a;
	## a-- + --a;
	## a + ++a;
		"as here is no defined order if X evaluated first or Y";
		"A side-effect: a change in state from one expression ISN'T ALLOWED";
>> it is better:
	>> to use prefix as default;
	>> to use postfix whenever we want to copy a variable;



the Arithmetic Operators:
=========================
the division && modular operators:
	-If one operand is double the result will be of double as default;
	-Dividing by 10 removes the last number in int type (as last num will be a fractional SO we'll get re);
	-Moduling by 10 gives us the last int;
	-Moduling by 2 tells us the if the number is odd or even;
	-Moduling remidiner r = n % k; r must be < k;



the [Assignment, Comma] Binary Operators:
=========================================
the assignment operator (=):
	## int x = 2 * y + 1 ;
	-- the Lhs = the Rhs (Left hand side = Right hand side);
	-- the Rhs is an "expression" ends with the statement terminator (;);
	&& the Rhs is evaluated firstly and then assigned to the Lhs;
	&& the Rhs have to be the same type of Lhs otherwise (A CError);
the comma operator (,):
   ## cout << (10, x=1, y=2, 40) ==> 40;
	>> "which evaluates from left to right";
	&& "return the last after-comma result";




the Logical Binary Operators:
=============================
>> they are corrisponding to our logic human logic;
--The (&&) operator sutisfies all of them:
    -- (Only 1 case is True: when all conditions are true);
    -- Its precedence is heigher than the (||) operator;
--The (||) operator sutisfies only one of them (Only 1 case is False: when all conditions are false);





=================================
===== 06 the Selection (If) ===== "the program flow";
=================================
>> it is the [ If , else if , else ] statements: ;

the Syntax in C++:
	>> if (condition) to "in case the body/to is only one statement";
	|| if (condition) { body } "in case the body is a block/multiline of code;
the Syntax in C++17:
	>> if (initialization ; condition) to;
	|| if (initialization ; condition) { body };
		"the initializer is seen only inside the if else statements NOT SEEN inside the else statement;
		"it helps limiting the scope";



=========================
===== 07 the  Loops =====
=========================
>> the loop means "circular";
&& the loop in our context is a way to command the computer to "REPEAT" the same operations till we ask to STOP;
&& with it we can now make any complex logic that requires repetition!;

the loop "break" clause:
	-- it stops the entire loop && makes the compiler goes after it;
the loop "continue" clause:
	-- it tells the compiler to jumb to the loop start again and continue from there;



the while loop:
===============
>> it consists of three important parts:
	01 the initialization;
	02 the condition;
	03 the inc\dec step;
		"each part wrote on different place not on one place (UNlike the for loop)";
		"the second two parts are for the logic && first one for the initialization";
    

the for loop: && "order of execution";
=============
>> it is a way of eligant way to organize the code;
>> it is the while loop when we separate its special two comps which are the initialization and the step:
	## 01 initialization && for (; 02 condition ;) { body && 03 the step };
	.. "in case we removed the condition then it is will be INFINITE !!!!!!!!!!!!!!!"; 
	.. "the default condition here is the true value" && stopes it the "BREAK clause";
>> its order of execution is:
	>> the 01 Initialization ONCE ==> 02 ...(Condition, Body, Step)... ==> 03 Condition, End;





=========================
===== 08 the Arrays =====
=========================

08 the 1D Arrays:
=================
>> it allows us to define K vars of T type consecutively in the memory; 
&& all that in one command - one statement - one var;

>> its declaration:
	-- int nums[x];
&& its initialization:
	-- int nums[x] = {} // The C Style init;
	-- int nums[x] {}   // The C++ Style (initialization_list style);
	-- int nums[] {1,2} // The C++ Style in auto deticting size (Fixed size);

!! it would give us [an RTE (a Run Time Error) || temp val] when index out of boundry:
	01 an RTE "WHEever we using the at method .. which checks before accessing";
	02 a temp val "whenever we using the []";
	## when we try to access an array with [negative value || an index >= the array size];



09 the char Arrays:
===================
>> as we know that chars are just numbers internally (and the're consecutive [A-Z] then [a-z]);
	## cout << (int)'A' // 65;
	## cout << (int)'a' // 97;
	.. "the char type is internaly a number [-128:127] otherwise => an overflow";

>> the string is called that becuase it is a sequence of chars (char of array);
&& it is initialized by:
	01 char name1[6+1] = { 'L', 'e', 'g', 'e', 'n', 'd'};
	02 char name2[6+1] = "Legend";
		>> "the length we deter should be plus 1 on the size we expect for the terminator nul char";
	03 string name3 = "Legend";
		>> "it adds the terminator nul char automaticaly";

>> the "terminator" nul char "\0":
	>> it tells the compiler that here is the end of the string so please stop there!;
	>> the syntax 01 && 02 of char, we have to add 1 on the size expected size;
		.. "The compiler is smart enough to add it whenever the size is added to it by one";



the array of strings - a 2D - a matrix:
---------------------------------------
>> it is an array of an array of chars;
&& each string/item ends with "\0" automatically since the type is string as its constructor works; 
## string names[5] {"123", "234", "345", "456", "567"};

>> the char arrays vs string arrays:
&& the char arrays:
	>> it is just an array - a primtive data type from the C-Style; 
	&& we need carfully to handle the nul terminator;
&& the string arrays:
	>> it is a "non-primitive class" that is part of the STL library from the CPP-Style;
	&& it supports a lot of convenient features like [concatenation (a+b), comparisons (a>b)];

>> the definitions that we'll hear in the string arrays:
	>> the Prefix: Any string starts from the first character (n prefixes);
	>> the Suffix: Any string sends at the last character (n suffixes)
	>> the Substring (Subarray): Start wherever and end wherever in consecutive way;
	>> the Sub-Sequence: Not consecutive but must be in order (Next letter must has bigger index);



10 the 2D Arrays:
=================
>> it is a [matrix, table, grid, 2D] structure;
&& its syntax:
	>> the rows * cols;
   ## int matrix[size_of_rows][size_of_cols];

## the cols * row && the DEFAULT rows * col:
	>> though they are have the same number of opoerations/steps BUT the first is slower:
	&& BEcuase it do many jumps on the memory (not consecutive) - which costs us more memory && cash;
## the val/cell of a row && col:
	## matrix[x][y];
	>> X represents the index of row;
	&& Y represents the index of column;


>> the flatten array: 
	>> it means to convert to 1D array && its idea is simply to put the rows beside each other in order;
	&& the length of 1D array will be rows*cols exactly as the same as 2D;
		## arr[3][4] ==> 3*4 ==> 12;
		>> 1 2 3 4 // 0 ();
		>> 5 6 7 8 // 1 ();
		>> 1 2 3 4 // 2 ();
	%% If we have position (i, j) in 2D array, what is index in 1D array: ;
	%% If we have index in 1D array, what is the position (i, j) in 2D array: ;


## the (position neighbours):
	>> If we have 4 neighbours and a 1 for the position(1, 1) we can take only a 01 step to reach each one (THE_Dir_arr);
	&& If we have 4 or 8 neighbours and a 1 for the position(1, 1) we can take only a 01 step to reach each one;
	&& If we have 15 neighbours and a 1 for the position(2, 2) we can take only a 02 step to reach each one in worth case;
		"Instead of loop which may take O(n) to reach last element";
## the (XD arrays):
	>> We can create 3D and XD arrays but BEcarful they are grow fast in memory and the formula is:
	## [5_year][100_student][20_subject];
	.. 5 * 100 * 20 space in memory;





===========================
===== 11 the Function =====
===========================
>> it is a one of the great things that let us organize our code in a very eficent way;

>> the "default params": 
	>> the params of non default values have to come first or "CError":
	!! int fun(int a, int b=1, int c);
	## int fun(int a, int c, int b=1);

>> the "paramater casting":
	## it is when we define a param with int and passing an argue of double type then WILL converted to int;
		"TYPE Script ^_^";

>> the "function overloading":
	>> it is when we define several funcs with the "same name" BUT with "different params" in either [types or count];
		"the compiler is smart anough to search and fined the relivent one on the used case";
	!! the return isn't considered && and the function type too;


>> the parameter && argument:
	>> the parameter is the variable which is part of the declaration;
	>> the argument is the default values of those params;
	|| the expression/values that passed on calling the method;


the passing by reference:
-------------------------
>> the passing by variable creating a new memory copy;
>> the passing by reference using the same value at the same memory location;
	>> using const into the initialization avoid that in case the argument was a var (has an adress);
	&& if the argument is a temporery var (explictly value) then WE HAVE TO USE const;
	## int fun(const int temp_var, int &init_var) {};

the Arrays always passed by reference:
	## int ref(arr[]) {};
		"WE didn't add the & Operator and also we didn't specify the size - auto size";


the Builtin functions:
----------------------
>> they are already implemented for us and ready to use which save our time ;

the #include <cmath>:
	%% abs<int>(-2)         // 2;
	%% fabs<float>(-2.4)    // 2.4;
	%% ceil(2.4)            // 3;
		ceil(-2.4)           // -2 ** (Tricky);
	%% floor(2.4)           // 2;
		floor(-2.4)          // -3 ** (Tricky);
	%% round(2.4)           // 2;
	%% round(-2.4)          // -2 ** (Clossest to the first int +-);
	%% sqrt(16)             // 4;
	%% max(a, b);
	%% pow(a, b);
	%% log2(n);
	%% log10(n);
    .. "For math funcs: https://en.cppreference.com/w/cpp/header/cmath";

the #include <iostream>:
	%% cout;
	%% isdigit(1);
	%% isalpha('A'):
		1024 for true and 0 for false;
	%% isupper('A'):
		256 for true and 0 for false;
	%% (char)tolower('X');
	%% (char)toupper('x');



the Static, Global and Local:
=============================
-Globals vars defined outside of all functions and are visible from its line to end of file;
-Local vars are only visible inside (bounded by) its block;
-Static vars is either [Global, or Local] vars BUT it initialized only once;
    -- The space of it is allocated only one time ;
    -- It saves its value and complete on in;

-Global and static vars initialized to their default values (0 or nul lptr);



=================================
===== 12 Recursive function =====
=================================
-It is function that calls itself with samller input (sup-problem of the same type) till reaches the baseline;
-It is when can decompose a problem to set of sub-problems of the same type of the problem;
    -- Like decomposing factorial number by multiplly it with factorial of number-1 (As the relation between them);
    -- And decomposing factorial that number by that way too;
    -- And so on till we reach 1 - the basecase that stops the recursion;
-Its basecase is the case where no more subproblems - A condition return a val of the same type of fun;
-We think in recursion one step only not tracing till the end;







===================================================================
======================== 2 Basics subset 2  =======================
===================================================================
@REM this pig has a big hot mug (zAmericanEnglish);

=====================
===== 14 Struct ===== (Look at subset3: OOP);
=====================
>> it is simply a way to  gather together a set of variables/features/methods or data members and actions together in one place;
&& it is defined as a data type - as struct - the way we define it;
&& its output/result/creation are the instances/objects of it - the way we use it;



the constructor method:
-----------------------
>> it is a method without a return type && its name is the same name as its struct/class;
&& it is called only & automatically when we "declare" a new instance;
>> it is a way to initialize an object from the begin when we instanciate an instance/obj from it;
&& it is a method like any method that accepts the "overloading":
	.. "if we instanciate an object without initialize it .. it will initialized with the empty constructor - Fn3";
	.. "BEcarful: better to use the empty one becuase we may face problems with the params - OOP we'll learn about";


=========================================
===== the "initialization"  in C++  =====
=========================================
initialization of a variable provides its initial value at the time of construction.
>> before C++11 we have to use different types of initialization for different cases !!;
>> so there was more than 19 ways to initialize an int !!;


the "uniform"/"list" initialization:
------------------------------------
>> it is come in C++11 to "uniform" the initialization;
&& it is sometime more "safer" like warning us on "narrowing conversion";
&& it is the "only way" to solve a problem like in templates;
&& it is eaither a ["copy" || "direct" || "value", "default"] initialization;



000 the default initialization
------------------------------
01 it is a garbage with primitives:
	## int a;
02 it calling the "default constructor" with objects:
	## string s;



111 the copy initialization types:
----------------------------------
>> it is when we use the assignment "=";
&& it is either "the old copy" or "the copy list";
&& the value of RHS will be created first then it will be copied to the LHS which is "NOT eficient";

01 the "old copy" which is "NOT secure":
	## double copy_init = a_value;
	## int narrowing = copy_init "the value will be converted from double to int without warning us";
02 the "copy list" initialization - "MORE secure":
	## int copy_list = {1};
	!! int copy_list = {1.1};



222 the direct initialization types:
------------------------------------
>> it is when we don't use an assignment "!=" - direct pass a value (WITH actuall value xD);

01 the old "dirict constructor" initialization:
	## int dire_init (an_actuall_value);
02 the "direct list" initialization:
	## int dire_list_init {an_actuall_value};



333 the value initialization types:
-----------------------------------
>> it is when we use a "direct initialdization type BUT without an actuall value";

01 the old "dirict constructor () with no value":
	01 with primitive types "NOT WORK - as we actually declare a function":
		!!  int y1();
	02 with objects "NOT WORK";
	03 with temp objects - calling constructor: ## Employee();
02 the "direct list {} with no value":
	01 with primitives inits with 0;
		##  int y1 {} ==> 0;
	02 with objects: 
	03 with temp objects - calling constructor: 
		## Employee();
		## Employee e{};


-- the aggregation initialization in struct (" The Has A relation ");
-- the zero initialization;




=============================
===== 16 the templates  =====
=============================
== it is one of the important functionalities that C++ uses;
== && it is used by the the Generic Programmingin:
== 	.. "Code works in general regradless of the internal details && regardeless the data type too";
== && IT is complex && hard to apply && gives us ugly and hard to understand messages on error messages;

>> it is a function that share the same logic once regradless the data type;
&& it is get generated by the compiler on the compile time ;
&& the used cases which only generated (one for each used type);


>> the idea of how it works:
	.. "BY that we can improve our logic once as the code now is once and in one place";
	.. "IF we discovered a bug then we'll solve it once";

>> the Generation:
	.. "INSTEAD of repeating code, the compiler will generate (copy\paste) the logic by itself with the used types";
	.. "the COMPILER (on the compile time) replaces the type words of the template with the corisponding used type";
	.. "the compiler generates ONLY based on the used cases";


the static variables:
---------------------
>> it is created once for each use case || for each generated function;



the function template :
=======================
>> its syntax:
	01 template<typename Type1, typename Type2, ..> function(Type2 x, Type1 y, int z) {};
	02 template<class Type1, class Type2, ..> function(Type2 x, Type1 y, int z) {};
>> it is called in two different ways: 
	01 the "compiler" call in case we use only one type OTHERWISE "CError";
		>> where the compiler tries to guess the used TYPE by itself
		## MyTemp(5, 2, 1);
	02 the "user" call: 
		>> where we define the types explicitly:
		## MyTemp<int, int>(5, 2, 1);

!! BEcareful with the string type :
	## sum("ab", "cd") ==> CError;
	## sum (string("ab", "cd")) ==> "abcd";


the function template specialization:
-------------------------------------
-We can handle a specific data type differently :
	-- By init a new template wihout types and replace the specific type that we need with the type vars;
-Syntax:
	-- template<>  ;
	-- string fun(string str, int i) {};
	.. "This template will used only if we called the template with first param of the type string";


the non-type params in templates
----------------------------
-We can add non type params instead of param type like:
	-- template<typename T, int SIZE> ;
	.. "First param is a type param - second param is a non-type param (explicitly defined)";
	.. "BUT it must be a constant - not reading from a user (cin)";
		"As they generated on the compilation time (before run-time)";

the overloading vs template
-----------------------
-Templates are iddentical syntax for different data type s;
-Function overloading is iddentical name + different params (in type or count) + different behavior;



the class template:
===================
-It is similar to function, we can have class to be independent of type;
-It is generated to serveral versions of the class template by the compiler - based on the used types;
-Its syntax like the function type AS we adding the template line before struct to be a class template;

The class template specialization
---------------------------------
-Its syntax:
	-- template<> ;
	-- struct Sname<specialized_type> {};



the variadic template/variable:
===============================
-Our functions so far has a fixed num of params;
-SO C++ allows us a dynamic usage:
	01 C++11: Initializer list:
	// If they are of the same type;
	02 C++11: Variadic templates:
	// Typically provide 2 functions: One is recursive and another is base;
	03 C++17: Fold expression:
	// Simpler coding for specific 32 binary operators;

-It accepts zero or more values (*0);
-It is known in different language as rest params :D;
-It Usually 3 periods (ellipsis syntax) are used to express it: …;
-IT returns only first element of that argu SO we need to recursive and packing the argu...;

-A function may have:
	01 at most one variadic;
	02 at the right most param;
-Variadic functions are those which take a variable number of argus;
	## void printf(const char* fmt...);
	.. "OLD style - UNSAFE typically";


the Variadic template:
----------------------
-A modren and safe way;
-It typacaly way to iterate over args is using recursion;

-Syntax:
	## template<typename ...SomeArgs>
		void Hello(int a, double b, SomeArgs ... args) {};
		.. "The SomeArgs called template parameter pack which the are (the argu itself)";
-Example:
	## template<typename T>
		T Sum() return 0;
		// Recursion base case -- called when there is no argument;

	## template<typename Type , typename ... Args>
		Type Sum( Type a, Args ... args) return a + Sum<T>(args...);
    
	.. "IT IS a right fold-expression (C++17)";


the "fold expression" :
=======================
-there are 4 stylse for it;
	-- Left unary and right unary;
		## return (args + ...);
		## return (... + args);
	-- Left binary and right binary;
		## return (args + ... + 0);
		## return (0 + ... + args);
	.. "the difference between unary and binary is binary allows us to init with empty"
	.. "SUPPORTED 32 operator";
-the comma operator evaluates from left to right and returns last operand;





===============================================
===== 17 STL (Standard Template Language) =====
===============================================
01 Intro
========
-Every strong programming language has ready-to-use data structures and algorithms;
-The four core fundemnetals topics in CS (Compuer Science):
    01 Progamming (C++);
    02 Algorithms (very competitional problems);
    03 Data structures:
       --- We need in many cases to 1 organize 2 process(methods) and 3 retrive data in some specific way;
       ### We called class a (user-defined) data structure becuase it encapsulate 1 data and 2 binding operation o;
    04 OOP;
    ++ [Software engineering, design patterns, databases, operating systems, and networking];
 
-STL provides us some famous data structures that is needed a lot in many projects;
-STL implemented very efficient data structures that is ready to use:
    -- Called containers too;
    -- C++ uses templates to make its content Generic;
-STL provides set of algorithms in general to act on these containers as its algorithms are:
    -- Independent of the data types using "templates";
    -- Independent of the containers using "iterators";


02 Queue
========
-It is supported the principle\strategy of FIFO (First In First Out);
-It has internally an array;
-It supports the methods of:
    -- push() && pop() for adding\removing an element;
    -- front() && back() for getting the top\last element;
    -- empty() && size();
    -- swap && emprace; ??;

03 Priority Queue (top);
=================
-It is a queue but sorted queue;
-Its default sort is bigger then lower (we can use -negative numbs for versus);
-Its methods:
    -- top() for getting the top element;
    .. "Instead of front && back .. It is C++ pro :D";

04 DeQueue
==========
-It is a two dimentional queue as we decide where to add\print elements (front || back);
-Its methods:
    -- push_front() && push_back && pop_front && pop_back;
    -- front() && back();
    -- [] && at(): trhows an exception if we tried to access an OutOfRange;
    -- begin() && cbegin() && rbegin() && crbegin():
       Retunrs a (read\write, read-only\constant, r\w reversed, const r\w r) iterator points to first element;
    ++ end() && cend() + rend() && crend();
    -- clear() && erase();


05 Stack (top - like PQueue in methods name);
========
-It is supported the principle\strategy of LIFO (Last In First Out);
-It has internally array supports the methods of:
    -- push() && pop() for adding\removing an element;
    -- top() for getting the top(last\back) element;
    -- empty() && size();
    -- swap && emprace; ??;


06 Pair
=======
-It is a pair of any two types LIKE (int, string, ..pair);
-It accessed by the attrs that introduces to us .first and .second;
-It supports comparison first with first and second with second in order of same level;
-It created in 2 ways:
    01 The method make_pair(a, b) which comming from the std lib:
    ## make_pair(a, b);
    02 Using the init_list instead:
    ## {a, b};

06 Tuple
========
-Its a Generalization of pair LIKE an array but apply different type s not one type BUT in sequence too;
-It accessed (read && write) by:
    -- get<pos> (tpl):
    ## cout << get<0> (tpl) << endl;
    ## get<0> (tpl) = ..;
-It supports the tie method which unpack the tuple values into separated vars LIKE in python:
    -- int a, b, c;
    ## tie(a, b, c) {tpl1};
-We concatenate 2 tuples to return a new tuple by:
    -- The method tuple_cat:
    ## auto t = tuple_cat(tpl1, tpl2);


08 auto && range-based for loop
===============================
-The auto keyword can deduce for us the data type of the using value;
-The auto keyword is clean in coding as it doesn't do any conversions;
-The range-based for loop styel:
    -- A loop with two comps only with a colon on middle:
    -- A right-side represents the data type that we'll iterate on it;
    -- A left-side represents the type of the element of that data;
    ## for (auto val : arr) cout << val << " ";
    ## for (auto &val : arr) cout << val << " ";
    ## for (const auto &val : arr) cout << val << " ";
    .. "The right-side must be support iteration on it ... the best data-type is which supports";

08 Iterators
============
-It is a class inside many DS RETURNs an obj deals as pointer:
    ## deque<int>::iterator it1 = dq.begin();
       ## vector<int>::iterator it1;
       ## set<int>::iterator it2;
       ## map<int, string>::iterator it3;
    ## deque<int>::reverse_iterator it2 = dq.rbegin();
    ## auto it3 = dq.rbegin();
    .. "SO best DS is which have inside it ::iterators && ::reverse_iterator classes";
    .. "BUT stack && queue && pqueue doesn't support these features ONLY deque from these type";
    .. "USING auto great option to deduce the type in auto way";
-It is internally an object (with two dimentional nodes OF POINTERS) && acts like a position (++ or --) !!;
-Its value get back by dereferencing it (*it) AS ANY ptr;
-It accepts arithmetic operations on it (+n or -n);
    ## auto it = dq.begin() +3 Jumping three positions from beginning;


-The methods of class ::iterator are:
    01 dq.begin(): iterator pointing to first element in the dq;
    02 dq.end(): iterator pointing AFTER the content of dq; "checking if we're done or not";
    03 dq.cbegin(): constant;
    04 dq.cend(): constant;
-The ::reverse_iterator methods:
    01 dq.rbegin();
    02 dq.rend(): "BEFORE first element";
    03 dq.crbegin();
    04 dq.crend();
-The operations that supports:
    01 Erase element using iterators (it returns the next iterator);
       ## it = v.erase(it);
    02 Insert element\group of elements using iterators;
       ## v.insert(it, v.begin(), v.end())
    03 Algorithms that takes iterators of begin()\end() as argu e.g. [search, find, ...];
       ## while (it != q.end()) ++it; "deque<int>::iterator it = q.begin()";
       ## for (auto it = q.begin(); it != q.end(); i++) 
       {};



09 Vector
=========
-Its idea is to act like an array BUT in a dynamic way (abble to grow-up\expanded);
    ## vector<int> v1;
    ## vector<int> v2{5, 7}; // Two elements 5 && 7 ;
    ## vector<int> v2(5, 7); // 5 Elements with 7 as init val;

-How it works && tips to create one (&& reserve):
    01 Insdie the vector there is an arr of some size called capacity regradeless the actual size which is zero:
    && Capacity size initialied with 200 or 0 sometimes;
    && BUT actual size is still 0 zero;
    02 Pushing new items increase the actual size and whenever the actual size reach the capacity size then:
    && Vector creates a new bigger capacity with ( 2x size of old one );
    && Copy s all old items to the new arr (BEcareful from performance);
    .. "Know the size you're going to use >> create it with that size (vector<int> v1(1,000,000))";
    .. "Know only init size possible growth && know they will be big >>:
       "Then reserve the capacity by>>: vector<int> v2; v2.reserve(50,000)";

-The method of size:
    ## (int) v1.size():
    .. "BEcarful Whenever we call a size of a ds its better to custume it to int";


09 02 Vector (2D && 3D);
============
-The idea is that we can create a dynamic size of depth, rows && columns;

-Example (The matrix of string):
    ## vector<string> matrix {"Cols", "R2Columns", "R3Cols"};
    .. "Three rwos each row has a dynamic size of columns [4, 9, 6] AS string CONSTRUCTOR supports (modern - an STL too)";
-Example (The matrix of int):
    ## vector<int> cols(5,1);
       vector<vector<int>> rows(3, cols);
    .. "A vector of vector - a vector of 3 rows of vector of 5 cols initalized with 1";
-The (3D Vector):
    -- A vector of vector of vector of type ;
    .. "Represent depth * rows * cols";


10 Algorithms
=============
-As we know a ds provides us with member (function && vars) that help us to achive some task;
-We have dealed with it a lot in its basic format we solve a competitional intensive task;
-It is a step by step procedural to achive a specific goal;

01
-The sort algorithm:
    ## sort (v.begin(), v.end()) // default lower to bigger sort;
    ## sort (v.rbegin(), v.rend()) // bigger to lower sort;
02
-The reverse algorithm:
    ## reverse (v.begin(), v.end());

On Vector (moved from vector chapter):
--------------------------------------
03
-The algorithm of find (start(), end(), val):
    -- We can search on a specfic value in an iterator using the find algorithm:
    -- By passing the iterators (first then end) of searching range and the value too as a third argu:
    ## auto it = find (v.begin(), v.end(), -2);
04
-The algorithm of insert (position, start, end):
    -- We can insert a group of elements in an iterator using the insert algorithm:
    -- By passing the position and the range of iterator (begin && end);
    ## v1.insert(it, v2.begin(), v2.end());



11 STL Set
==========
-It is like PQueue but it provides more strong functionalities (Sorted && unique in default);
-Its methods:
    01 .insert(val):
       // A new val (unique && sorted);
    02 .count(val):
       // Is exist ? like .find but slower;
       // "BUT it is slower - better to use find attr which return an iterator of the same type of set";
    03 .find(val):
       ## if (auto[set<int>::iterator] it = s.find(val); it != s.end()) {};
       // Very fast as it is an internal implementation (DIFFERENt of the find general algorithms (uses generic itera));
       // Returns a "read-only" iterator of that val if exist otherwise returns the .end() iterator;


-We can compare objects of set of specific ds by implement inside it a function:
    -- bool operator<(const ClassName &rhs) {} >>;
    00 using if conditions from scratch;
    01 using make_pair or the dynamic {} of pair:
    02 using tie;
    ## return tie(a,b,c) < tie(rhs.a, rhs.b, rhs.c);


11 02 Multiset
==============
-Allow Multiplicity (&&breaks unique ( 1 / 2 of set rules ));

11 03 04 Unordered Set && Unordered_multiset
============================================
-They are built upon hashtable:
    .. "SO its operations in general are fast";
-They doesn't support reverse_iterator as doesn't see order :D;



12 STL Map
==========
-It came to help us accessing arrays with a key of specific type instead of indixing of int type ;
-It is like a Generalization for arrays and like a pair in declaration:
-It is internally consists of pairs of key and its value:
    ## for (const auto &pair : mp) {};
    ## for (const pair<string, int> &item : mp) {};
-It has the internal find method;


13 STL String DS
================
-The lib "#include <bits/stdc++.h>"
    -- Covers all we need typically;
    .. "Used if you fail in a trouble of inclusion and you don't have internet fined the specfic package of feature";
    .. "Don't use it in real-apps please";
-Its methods:
    -- .substr(start, end=size);
    -- .find(str, pos=0);
       --- Retuns a huge number if not exist ;
       ... "Costuming this number to (int) gives us -1 instead";
       ... "PROFISIONAL comparing with :: no position instead";
       ### if ((int) str.find(substr))
    -- .replace(from, size, with_val);



================================
===== 18 Files and streams ===== (stream like notation shaprps of music);
================================
-To save data into disk not memory;
-The cin\cout is an object of (fstream) class THEY are created and ready for us to use direct:
    -- As we know we can read and write to console (IDL screen / balck screen);
    -- The cout writes our stream into the IDL;
    -- The cin reads our stream from our input of IDL;
01
-Creating our own object to read (ifstream) from a file instead of the IDL sc in C++ Style:
    ## ifstream file_in(file_path);
    .. file_in >> x >> y;
02
-Creating our own object to write (ofstream) into a file instead of the IDL sc in C++ Style:
    ## ofstream file_out(file_path);
    .. file_out << x << y;
03 ( 01 + 02 );
-Creating a one object for both reading and writing together !!:
    ## fstream file_handler_in_out(path, status);
    01 file_handler_in_out >> x >> y;
    02 file_handler_in_out << x << y;
    .. The status is (auto status = ios::in | ios::out | ios::[app, trunc]);

-Reading whole content of a file:
    // string line;
    ## while (getline(file_in, line)) cout << line;
    ## while (getline(file_handler, line)) cout << line;
    .. "THE getline takes a punch of content to seperate each line and pushs it in a queue":
       "&& then assigns each line with the line var && pop that line of queue till end";


The Old CStyle: (in only two lines :D);
---------------
-CStyle to read from a file (cin):
    ## freopen("freopen_read_file.txt", "rt", stdin); // Takes the input from that file;
-CStyle to write to a file (cout):
    ## freopen("freopen_read_file.txt", "wt", stdout); // Out my input into that file instead of CmdOUT;


istringstream
=============
-To read (write) from a string instead of files;
-The same rules as any object of fstream lib:

01
-It allows us to read and assign into vars:
    ## oss >> name >> pass;
    .. "Without it we was separate the string and then assign !";
02
-It allows us to deal with string as an output destintion;
    ## oss << "Legend " << 123 ;
    .. "APPEND to the string oss - construct (init) a string BUT in a complix way :D";



=======================
===== 20 Pointers =====
=======================
20 01 The memory
================
-The memory is devided to punch of regions\segmants [ 1 Stack, 2 Heap, 3 Permanent storage area[]]:
    01 Stack for local variables (a small segmant);
    02 Heap is the segmant of free memory style (a big segmant UP-TO system RAM);
    03 Permanent storage area is for:
       [ 031 Global vars, 032 static vars, 032 and program instructions];

01
-Stack:
    It is a special region of computer's memory stores temporary "local" variables created by each function:
    -- Automatically managed / Faster;
    -- Local variables scope;
    -- Has size limits (1Mb for windows and 8Mb for some unix systems);
    -- Consecutive blocks in memory (AS it an array in fact);
-The run-time stack (the stack of function calls \ The call stack segment):
    -- When a function is called, it enters the stack with its details of (vars, params, &function_itself, ..);
    -- Once finished, it is removed from the stack with its all details;
    -- For every active function, following details are in the stack (DETAILS are):
       [The return address(the address of func(when we call it || the address of ptr MAY_BE)), 
        Func params (on top of func address),
        and func's local vars, (under them >>) the return (address || val)];
    .. "SO we shouldn’t return a reference of a local var from a func (as it will be destroyed)";
-The run-time stack potential problem:
    -- Stack overflow Problem;
    -- We are creating a very huge local array in the stack;
    -- Calling so many functions like in RECURSION :D;
    .. "SO avoid it in practice :)";


02
-Heap:
    It is s a HUGE free space of memory up-to RAM system:
    -- Memory managed by us [new, delete, malloc(), free()];
    -- No limit (up-to system RAM);
    .. "MAYBE lead to memory fragmentation";
-Heap Example:
    ## int* fun(int n) return (int* ptr1 = new int[n] {1,3,5,7,9});
    .. "Here is ptr1 is a local var in the stack SO it will be destroyed BUT its value\data not (ADDRESS of heap)";
    .. "Allocated data where ptr1\ptr2 points in the HEAP (may not have sequential addresses)";



20 02 Reference
===============
-When we declare a var int age { 55 } a memory location is reserved for it:
    -- Location is 32714 or in hexdecimal representation is 0x7fca;
    -- Name\Value is age = 55 ;
    -- Data type is int;
-Each var returns either its value or its address in memory: (:D); 
    -- When we call a var in normal, its value is returned;
    -- When we assign a new var with & with other var, its address is returned;
    -- When we pass a var as an argu to a &par, its address is extracted;
    .. "IF the waiting on the other side expecting a ref, the address will return of that var otherwise its value";

-The (&) is named the address-of operator and it stores the address of the var that is COMING (OR going towards :DD);
-The reference is declared as an alias of a var;
-The reference type must be of the same type that indicates to AS it an alias of those value && type (that var);
-The reference var itself returns the val (alias);
-The reference constrains:
    -- Can't re-assing to another var after assigning "INIT_ONCE";
    -- Must be initialized to a declared var;
    -- Must be of the same type ;
    && If the argument we pass is a temproray val to a that &param THEN this &param SHOULD be constant;

-Return by reference:
    -- We can return a reference of data member of a struct:
    .. "BUT we can't in normal function with local vars as it will be destroyed with its details and data";
-Iterate by reference:
    ## vector<int> vec {1,2,3,4};
       for (auto &ref_val : vec) {};
       for (const auto &ref_val : vec) {};
       // for (auto val : vec) {}; // Iterating by val not by referece !;
-MITSTAKES we do :
    ## map<int, Employee> m;
       m[0] = e1;
    .. "This is a copy BEcareful (m[0] !== e1) .. map copy the obj ISN't THERE A WAY to set by ref not val??";


20 03 Pointers
==============
-It is defined with the unary operator (*);
    01 It is a var and has its own address in memory;
    02 Its value is an address of another var;
-Its value of address that we're pointing toward got by (*ptr) - (Dereferenced):
    -- That unary operator named "Dereference operator";
    ## *ptr = new_val;
    .. "*ptr && var && ref now thire value now is new_val";

-We can change the pointer (UN_LIKE reference) as:
-ALL pointer vars have the same size in memory (as ref) regardless what the data type they pointing to;
-Initialization 02 WAYS:
    01 Either to some address;
    02 Or set initially NULL\nullptr\0;
    .. Or garbage;
    .. "We can define it without initiale then => Garbage value";
    .. "BEcarful *ptr of nullptr gives us an RTE (RunTimeError) as it looking to no-where";

WHY pointers not references !?:
-------------------------------
-Pointers allow dynamic memory allocation;
    ## LinkedLists instead of arrays (fixed - in sequence adressing);

-WE can re-assign it to another val UNLIKE ref;
-WE can assign it to nul ptr UNLIKE ref;


20 04 Pointers and arrays
=========================
-Array in fact returns the adress of first element as a value and arr[i] returns the address of (arr + i(int));
-Array ptrs can accessed in two style:
    01 With the "subscript" notation style which is arr[i];
       ## int first_ref {arr};      // Calling array returns its address as a value in default;
       || int &first_ref {arr[0]};  // Extract ing the ref of first element which is same of array;
       ## int* ptr {arr};
       || int* ptr {&arr[0]};
    02 With the "off-set" notation style which is: 
       ## *(ptr + i); 
    .. "AS array defined its items consecutively in the memory [1008, 1010, 1012, 1014]";
    .. "MOVED cell by in memory";

-Dereferencing in priority LIKE pre increments\decs operations;
    ## *ptr++; // Move a cell and return the val of before the move ed cell;
    && *++ptr; // Move a cell and return;
    ## *ptr++; // Get the val of current cell then increment this val by one BUT return val before inc;
    && ++*ptr; // Get the val and inc;

-We can't move and assigning to the main arr BUT we can do that with aliasis LIKE ptrs:
    ## arr++ // CError; "BUT arr+1 ok as we don't assign to the main var (arr)";
    ## ptr++ // Moving a cell;
    ## ptr+1 // Moving a cell;
-We can know how many cells between ptr and arr:
    -- ptr = arr + 3 ;
    ## ptr - arr // 3 Cells;
-We can iterate by ptrs:
    ## while (ptr != arr+size || arr.end() iterator) *ptr++;
    .. "Comparing the mover pointer(address) with first address after the arr => (garbage - overflow)";    
    .. "BEcarful from going beyond limits";
-We can iterate by ptrs in string in easy way:
    ## while (*str != '\0') *str++;


20 05 Pointers and const
========================
-There are three cases for pointers and consts;
-If value(pointing towards) is const THEN ptr data type must be const too REGARDless ptr itself const or not;
-If value(pointing towards) is not const THEN ptr would be:
    01 const(data wouldn't change by it ever);
    02 not const (and change the data);

01 
Pointer constant type (indicate to const):
    ## const int* ptr1;
    // ptr = OK  // As ptr itself isn't const;
    // *ptr = .. // CError as its data here is const from ptr prospective (EVEN if it in fact isn't const);

02
Constant ptr itself:
    ## int* const ptr;
    // ptr = ..  // CError as ptr itself is const;
    // *ptr = Ok // As data itself isn't const;
    .. "IF data isn't const then we can't assign non-const ptrs to it from begin ..";

03
Pointer constant type && constant itself:
    ## const int* const ptr;


20 06 Pointers and Functions
============================
-Passing a pointer as an argu to a ref param needs us to deref it while passing:
    ## void fun(&ref) {};
    -- fun(*ptr) ..;
    .. "DEREF returns the var with its content(address, val,) WHICH returns the val of it in default :DDDDDD";
-Reference are safer than ptr as they doesn't have a nul value UNLIKE ptr which need us to check first :D;

-There are 04 Ways to init params and passing by Reference && Pointer and 03 ( or 04) Cases:
    01 ref_param:
       -- Accepts 02 / 04 [var as an argu, deref_ptr (returns the var)];
    02 const ref_param:
       -- Accepts 03 / 04 [var as an argu, temprory val, deref_ptr];
       .. "MORE flixable BUT it won't change :D";
    03 ptr_param:
       -- Accepts 02 / 04 [ptr as an argu, address of var as an argu];
    04 const ptr_param;
    IDK :DDD;

-Tips:
    01 Avoid using ptrs as possible IF refs are enough? as you won't need to check if ptr is nul too;
    02 Ptrs used when you need a dynamic memory AS they're play a role in STL;
    03 Avoid passing by ref or ptr IN small data type s 
       AS they don't cost us a lot UNLESS 01 in big project or 02 passing heavy data type s LIKE vectors;


20 07 Pointers and dynamic memory allocation
============================================
-The compiler handles the normal creation of vars by itself in auto way;
-The compiler will not handle our created memory WE just who can deal with it (delete);
-Dynamic memory created by adding the new operator before data type:
    ## int* p2 {new int} // initialize with default with initialization_list;
    ## int* p3 {new int {1}};
    ## int* p3 {new int (1)}; // initialization_list and curly initialization;

-Delete our data:
    -- To delete a non-array ptr:
       ## delete ptr;
    -- To delete a dynamic array:
       ## delete[] arr_ptr;
    .. "COMPILER will warning us if we used the normal delete - Good compiler";
-If we forgot to delete?
    -- Then memory will leak: A part of memory that is never released (till a machine restart);
    .. "There are tools to discover memory leaks";
    .. "Checking your task manager might reveal some cases :D";
Tips:
    01 Never leave pointer uninitialized; At least to nul lptr;
    02 Whenever delete a pointer: assign to nullptr AFTER Deleting;


20 08 Pointers and Struct
=========================
-Pointer to struct data accessed by:
    01 by the arrow style (->) "off-set notation";
    02 by deref it (returns the obj itself) and using the dot notation;
    ## (*ptr).id;

-Creating a ptr without assigning to a defined var (the main and the only ref to an obj is ptr):
    ## ClassName* obj_ptr { new ClassName {}};
-Creating a new ref from a ptr:
    ## ClassName& ref_obj { *ptr }
    .. "DEREF returns the var with its content(address, obj,) WHICH returns the obj (var) of it in default :DDDDDD";



===================================
===== 22 Headers and Includes =====
===================================
-It is one the fundemnetals topcis\methods\features that we use in the industry to handle big projects;
-It is a code that is already implemented and ready to use by other:
    -- The code is written in files with of extesnsion (.h || .hpp) we called them header files;
-Its get included inside our code by putting the header file name inside double quotes:
    -- #include "our_header.h" ;
    .. "Our own header files surrounded by double quotes";
    .. "Official file system get included by surrounding them in <>";
-Its include logic:
    -- The code of header file get copyed by the compiler inside the file whcih had includ it;
    -- If header file included several times (same function duplicated - multiple redefinition);
    .. "THEN We'll get on a CError - of redefinition";
-Prevent multiple inclusion:
    -- By using the include guards (#ifndef, #define, #endif):
    01 #ifndef UniqNamePerProject_H_ ;
    02 #define UniqNamePerProject_H_ ;
    >> OUR_CODE here which will execute in case the condition is true (not defined before);
    03 #endif ; // UniqNamePerPrject_H_;
    .. "THE execution done in order - 01 if not define (true) then go to next guard .. 02 define it .. 03 and last end";


22 02 The feature of separating Interface\Declaration from Implementation\Definition (What from How);
====================================================================================
-Interface focuses on What && Implementation focuses on How;
-Templates sadlly can't be seperated YOU have to declare && define in the header file;
-The order of files is that:
    -- First: The main file;
    -- Second: The header file which copied into the main file (Also to the implementation file when included there);
-Who seen who :D:
    -- Main file just see the data of header files;
    .. "SO we need first to declare our data inside it - telling compiler there will be some imple\vals in future";
    -- Header files linked with the implementation of source files those included them :D;

-Including the standard templates[<iostream>, <..>] inside the header file better than implementation file:
    -- BEcause you maybe use something from those templates like [string, cout, ..] while declaring;
    .. "AS Including twice gives us a (re-definition error)";
    .. "Move the included templates to header as you can move";

Global variable across files
----------------------------
01
-We can declare a global var that is visible from several files:
    01 Declare it in the header with word extern:
       ## extern int extern_var;
    02 Define it in a .cpp:
       ## int extern_var {};
    03 Use it from whatever file that #include the file;
    .. "IT declared and implemented once (Include guards) - keeps its value tracked - in paralel with its files";
    .. "WE can use it now in the main file && in the imple file which init it ..";
    .. "A function incre the var in imple && incre the var by calling it in our main as it seen there too";
02
-We can init a local var visible in the file one (same var name can be used in other .cpp files):
    ## stat int some_global = 0 ;

03 04 !! ("DON't use"):
    ## static int some_global;
    .. "Create a DIFFERENT variable with EVERY #include sum.h"
    ## int some_global = 0;
    .. "Visible in the file one, BUT no other .cpp can use the same name"


22 03 Separate with struct
==========================
-Every data we need to access from out-side THEN we'll should use (ClassName::our_data):
    ## ClassName::ClassName(string name_) {};
    .. "Defining the constructor from out-side";
    ## void ClassName::MethodName() {};
    .. "Defining a method of a struct from out-side";
    ## int ClassName::var_name {};
    .. "Defining a var of a struct from out-side";
-The scope resolution operator (::);



22 04 Forward declaration
=========================
-It helps us in specfic problems;


22 05 Preprocessor and Linker
=============================
-






=================================
===== 23 Exception Handling =====
=================================
-When we develop applications, we may face conditions where we can’t complete the function (We have to stop!)
-Two Major approaches to communicate as possible the problem (Handle the error):
    01 Return error codes:
       ## 0 zero is an error code! means there is no error (method is success);
       >> Each function either return 0 (for success) or one of the defined error codes;
    02 Throwing Exception:
       >> This is a programming language mechanism to force function processing (More common & safer);

Throw exception
---------------
-The std has many defined exceptions (structs) for common cases:
    01 logic_error;
    02 invalid_argument
       ## throw invalid_argument("Please enter a valid number, legend says :D");
    03 length_error;
    04 out_of_range && range_error;
    05 runtime_error;
    06 overflow_error && underflow_error;
    .. "And so many..";


Exception Propagation(propapages up) && [] vs .at();
------------------------------------    ------------
-Example of vector: 
    ## [] VS at():
    >> [] Just returns the index position without checking correctness;
    >> () Checks before and if wrong position then throws out_of_range exception;
-Exception thrown from range_check:
    -- Thrown to .at(pos):
        -- Thrown to main():
            -- Throw to Process Caller OS;
-Code flow stops at each line receives a thrown exception;

Catching the exception
----------------------
-The "try catch block" allows us to catch these thrown errors:
    -- Then we may log 
    -- Or handle them: 
    -- Or even throw them again;
-They allows us control what to do, instead of just crashing the program!
-Lower layers in a system typically throws or even don’t catch;
-Higher layers has more context to make decisions;


23 02 Multiple Exceptions Handling
==================================
-We can catch the wrong exception (matches a specific exception type!):
    ## try{} catch(runtime_error &re) {};
-We can use multiple catch to match different type of errors:
    ## try{} catch(runtime_error &re) {} catch(invalid_argument) {} ..;
-We can catch all other types:
    ## try{} catch(runtime_error &re) {} catch(invalid_argument) {} catch(...) {};
    .. "We might use the … to c - Must be in the end";

-Throwing and catching integer data type codes:
    ## throw 17 ;
    ## catch(int &error_code) {};
-C++ STL Exception Hierarchy:
    -- Exception[
            bad_alloc, 
            logic_error[length_error, out_of_range, invalid_argument], 
            runtime_error[range_error, overflow_error, underflow_error],
            bad_cast
        ];


















===================================
===== 24 More of Fundamentals =====
===================================

24 01 Bits Range
================
-Computers are easier built with binary system (bits 0 and 1)
-In the decimal system we have in total:
    ## 10 numbers for 1 digit [ 0 , 9 ];
    ## 100 numbersfor 2 digists [ 0 , 99];
    ## 1000 numbers for 3 digists [ 0 , 999 ];
    .. " 10**k numbers for k digists [0, 10**k-1] "

-In the binary system we have in total:
    ## 2 numbers for 1 bit ( 0 or 1 );
    ## 4 numbers for 2 bits [ 0 , 3 ];
    ## 16 numbers for 4 bits  [ 0 , 15 ];
    ## 256 numbers for 8 bits OR 1 Byte [ 0 , 255 ];
    .. " Byte is 4 bits ";
    .. " 2**k numbers for k bit [0, 2**k-1]";


24 02 Signed && UnSigned vars
=============================



24 03 Signed && UnSigned vars
=============================
24 04 Signed && UnSigned vars
=============================
24 05 Signed && UnSigned vars
=============================
24 06 Signed && UnSigned vars
=============================
24 07 Signed && UnSigned vars
=============================
24 08 Signed && UnSigned vars
=============================





===================================================================
============================== 3 OOP ==============================
===================================================================

=======================
===== 3 13 Struct =====
=======================
-It is came to help us organize our data similar to funcs but in bit a different way;
-It is similar to data type :
    -- It is not a primitive data type - which supported by the system;
    -- It is our data type - a user-defined data type ;
-Its data accessed with the . operator to get both vars and methods;

01
First principle of OOP && data members && member functions (methods);
----------------------
-Its critical usage:
    -- It is a way to collect\gather together the relivent data members(vars) on one UNIT (FirstHalf 1/2):
    -- && Binding them with the operations on them (member functions - methods) on that UNIT (SecondHalf 2/2);
    .. "Encapsulation: encapsulate data members with member funcs within one single capsule";
    .. "Encapsulation: by that we have more control over coupling in our code";

-Data members vs methods:
    -- Data members meaning the vars of struct;
    -- Methods called on java and called member functions in C++;


=========
OOP =====
=========
-The OOP is one of the most important paradigms in programming;
-The programming paradigm is way of [Thinking, viewing, structuring for software];
    .. "Philosophy :DD";


The pyramid of OO (Object Oriented): (4 Layers);
------------------------------------

01
-The OO paradigms (in programming):
    01 OOP:
        -- Its view: [objs + methods + interactions];
        -- Its thinking & structuring:  is very centralized around object concept;
        .. "This is an obj, connecting with another obj, separated in an obj and so on" :D;

        WHY OOP?
        -- Its more "correspondence" between real-world objs and OOP Classes;
        -- It helps us in "handling complexity" of the software products;
        -- It is one of the best ways to deal with software "crisis":
            --- Complix projects => [over-budget, over-time, buggy !meet reqs or never delivered];
        -- It debugs the code in efficient way;

        WHY not procedural?
        -- No owner for data / data integrity issue / Many functions may modify the building block;
        -- Harder debugging if data is corrupted;

    02 Procedural paradigm:
        -- It is a punch of files and functions + "linear flow on instructions";
        .. "AS we did in employee project (FIRST_PROJECT) line by line using arrays, funcs and vars every where...";
    03 Functional paradigm ();
        .. "JavaScript :(((((((";
    04 Declarative paradigm ();
        .. "??";

02
-The OO Concepts - OOP Concepts are 6 :
    -- They are very centralized around object concept;
    01 Encapsulation (Gathering together the relivent .. && the oper..);
    02 Abstraction (&& DataHiding);
    3 Object;
    4 Class;
    05 Inheritance;
    06 Polymorphism;


03
-The OO Principles:
    -- It is the most important skills we need in design:
    01 SOLID;
    02 DRY;
    03 KISS (Keep it simple, Stupid!);
    04 YAGNI (You ain't gonna need it);
        -- A lot of programmers add more features doesn't need them now 
           && They just add them for feauture BUT THEY NEVER USE THEM !!;

04
-Design patterns:
    -- It is an important part of OO picture;
    -- They are the best practice for some repetitive design sub-tasks LIKE queue;
    -- They are overuse and also OVERSTRESS in study ^_^;
    .. Some patterns are so important (e.g. Singleton / Factor);
       From a domain to another, some patterns are more used
    .. "SO please use it in the right situation for the right reasons (THE_SKILL)";

OOA && OOD && OOP ( && Who && Where to complete)
-----------------
01
-OOA: 
    -- It is an "analysis phase for requirments" like (customer reqs for his product(website));
    ## It analysis models (Objects of objs (problem of pro...), use cases, the relivent technology to use here, ..);
    .. "It comes first then OOD";
02
-OOD:
    -- After software analysis we design the system;
    -- What we have of [software platform, hardware, availability, scalability(millions of users), budget, ...];
    .. "It is a skill - takes a long to build elegant designes - such a skill";
03
-OOP:
    -- Then we 01 "implement" and 02 "test" the system using that paradigm language;

04
-Company culture + scale of project + team size => Decide how they applied;
    -- In small projects we (devs) who OOD && OOP;
    -- In lagre projects we may have [buisiness and system analyst(OOA), architect(OOD), tech leads && devs];

05
-Reading:
    -- OOP (C++ How to program (OOP chapters));
    .. "During or after the course";
    -- OOD (Head First Object-Oriented design and analysis);
    .. "After the course";

===========================
===== 40 03 Homework  ===== ()
===========================
-What is the data member and the member methods (declaration only);
    -- These info represent the "infrastructure" which is the team is going to follow on the porject;
-Using 1 variable only for seconds saves memory, but it complicates the code:
    .. "Clarity should be preferred than minor efficiency improvements";
-Make the class responsible for one thing:
    ## Class for date ;
    ## Class for time ;
    ## Class for both date && time ;
    // Datetime is "composed" of Date and Time
    .. "Always focus a class on a specific functionality (single responsibility)";
    .. "Easy to give different developers different tasks";
CodeReview for homework 3 :
    ** Code Review comments from Mostafa to Mohamed:
    ** 1- rectangle_width;
    ** I can't think in a reason why this attribute is used. Probably copy/paste mistake. Be careful or clarify.
    **
    ** 2- string favourite_*
    ** What is the value of all of these favourite attributes. In OOP, only "relevant" attributes are used
    ** Although a person could have favourite_food, but this is not relevant in our context (banking app)
    **
    ** 3- string birth_of_date;
    ** As you know, we may have several functions related to birth date
    ** This data type(string) will be painful. Every time we will have to extract day/month/year
    ** You better add 3 integers for them.
    ** Even better, use the struct Date that we already built for the birth date. The class has a lot of functionalities
    ** This way we reduce the 'RESPONSIBILITY' of our class. RESUABILITY is critical concern in OO.
    ** Think in more COMPOSITION of other objects (e.g. BankCustomer has a Date, where Date is another object).
-HIDING details like in google engine implementation:
    -- One advantage of that is making system usage simpler and cleaner;
    --  If you don't need anything, why you should be annoyed with its details!
    

========================================================
===== 40 04 OO Data-Hiding && its access modifires ===== (vs Encapsulation);
========================================================
-Class is similar to struct (encapsulate data & methods) which came from CLanguage and evolved to be like class;
-Class is more involved in OOP Features as it comes with C++ (C + OOP);


Private vs public (THE access modifires - Determines accessibility);
-----------------
-Public section:
    -- Users can see and access from both in-side && out-side;
-Private section:
    -- Users\instances (OUT-siders) can't see or access these data member or methods BUT:
    -- Public section (IN-siders) can see and access it;
    .. "A good design who hides as can as possible data";
-The users are:
    -- Outside-Code that is either other classes in same project or client using final project;
-Example (Google-Search-Engine in visible and hidden): 
    -- All complixity is hidden;
    -- BUT user knows what and where to query (Search-bar, settings, view, ..); 
    .. "The search method is on the public and the other complixity is hidden";


-WHY?
    01 To prevent "corruption" of data by other entities (outside-code);
    02 Protect object's data ("integrity") && SEQuerity too :D;
    ## Adding a non-suitable new adapter to you PC that fails the system (we'll know the problem where now);
    03 It is also reduces the system "complixity" and better code (increase) "readability" (less complex code is viewed);
Data-Hiding vs Encapsulation
----------------------------
-Encapsulation: Gathering together (making the software more managable) in one unit:
    .. "WHATever the place of its data in that unit DOESN't matter";
-DataHiding:
    04 It isn't imposible without Encapsulation;
    05 It reduces outsiders DEPENDENCY (COUPLING) to our data;
    ## As we hide the complixity on the search-engine and just revail the search method:
    .. Which depends only on one thing from out-side which is the user query ;
-Tip:
    -- "Reveal as little as possible of the data (members && methods)";
-Relevant Concepts:
    -- [Integrity/, dependency\, system complexity\, User (outside code)\, coupling\, readability/, security/];

                                                    ==============================
                                                    IT is done on two perspective:
===================================         FOR front-user level    For low-level perspective too;
===== 40 05 Abstraction التجريد === Not only(Getters && Setters) BUT( 1 Hiding && 2 Showing && 3 Separating);
====================================        (Accessors && Mutators);
1 Hiding the definition of our data (unwanted details - as we care about what not how):
    .. "Private is data-hiding";
2 Showing the declaration of our data without definition;
3 Separatting the definition\implementation (HOW) of declaration\interface (WHAT):

-SO Abstraction is about hiding unwanted details while showing most essential in a given context;
    -- In a context: (getters and setters) that are relivent and only will be used :D;

-The Getters known as Accessors:
    -- An Accessor is a method (class function) used to (return\access\read) data members;
    .. "Usually starts with Get MemberName";
-The Setters known as Mutators:
    -- A Setter is a method (class function) used to ( set \mutate\change) data members;
    .. "Usually start with Set Member";
-BEcarful:
    .. "Don’t be the guy who generate setters & getters for every field";
    .. "You may to fail the integrity of system - don't generate them if you will not use them in wise way";
    .. "Think twice what to provide and code once";
    ““ "Don’t ask for the information you need to do the work; ask the object that has the information:
       "To do the work for you.” Allen Holub";


3 (Separating)
What vs How? (+ using header files);
------------
-What:
    -- What function takes and return;
    .. "The user care with what";
-How:
    -- How it is implemented [slow, buggy\stable, costs];
    .. "The user doesn't care with how";
-Separating Goal:
    -- We can change internal implementation of class independently without affecting the user;

-Example on separating What from How:
    01 What:
        --- class ClassName {
            private {};
            public {
                ClassNmae();
                ClassNmae(int a, int b);
                double MethodName(char c) const;
            };
        };
    02 How:
        ## ClassName::ClassName() {...}; // For empty constructor;
        ## ClassName::ClassName(int a, int b) {...}; // For the paramatarized constructor;
        ## double ClassName::MethodName(char c) const {...} // For method inside the class && const(for getters :D);

-The scope resolution operator (::) to separate implementation from interface;


Data-hiding vs abstraction (Homework 01 );
--------------------------
https://www.quora.com/What-is-the-difference-between-abstraction-and-encapsulation-2 :
    A house can be thought of as an "application".
    Drawing room, Bed room, Store room, Kitchen, Bath room etc can be thought of as its "classes".

Given context (Homework 02 );
-------------
-We have kindergarden app, college school app, college's gym app:
    01 Common between all: Name, Address, Gender, Birthdate
    02 Common between last 2: Email Address, National ID
    03 Unique: Preferred Snack, GPA, T-shirt size



==========================
===== 41 OOP Classes =====
==========================

41 01 Constructors && Destructors
=================================
Constructor:
-It is a function - a speical member function - automatically called on instanciating;
-Its name is same name of class itself + no return + in public section;
-The default constructor:
    -- It is first one that isn't with params or first with all defaulted params;
    -- It is can generated by compiler as default (&& init all vars) IF THERE is no any constructors (WAY 02 );
    .. "If there is no empty constructor and there is a paramaterized one then we can't call the default (CError)";
    .. "AVOID default init - ITS better to define our own constructor and our own data members";
-Repeating constructors making overloading as we know in any method;
    .. "IF there is an empty constructor and a paramatarized one with all default values":
    .. "THEN compiler will compile only one THE first one (empty one)";
-Delegating constructor:
    -- A constructor that calls another constructor;
    ## Empty constructor calls another of different params to avoid repeating our logic;
    ## ClassName() : ClassName(1,2) {};
    .. "SEARCH on POWER-OFF delegation in workplace (your team-lead delegate tasks to you..)";

-The member initializer list to init data: (init_list || member_init_list of methods) && HOMEwork_02;
------------------------------------------
-AFTER defining the ClassMethod putting (:);
    ## ClassMethod(int width, int height) : width(width) , height(height) {};
    ## ClassMethod(int width) : width(width) , height(0) {};
    .. "INSTEAD of defining new different var names like width_ and height_";
    01 "With it values are initialized even before constructor starting":
       ### Declaring an object of a inside b THEN defining that object with the constructor b:
       >>> Here the default constructor of (a) called "explicitly" (as we declared);
       >>> And one for definitions ( 01 default conc  while declaring 02 while defining) => twice!!;
       ... "BUT with init_list (member list) it calls only once NOT twice (while declaring will not called)";
    02 "IT helps us too in const vars ???";
       ### A param of method takes a const ref of an obj HOW YOU'll init const after declare it !! NO_WAY:
       ... "THE only way to init a ref (CONST ref) is it";
    03 "IT is the only way to initialize a class that doesn't have default constructor e.g. class B";
       ### ClassC(int &y, const ClassB &bb) : y(y), bb(bb) {};
       ... "AS it called only once NOT twice ^^ (not called on declaring)";


Destructors
-----------
-Its name is ~ClassName + no return or even params;
-Is is a special member function that is called automatically when an obj goes out of the scope:
    -- The function or program end;
    -- The local blocks ends [if, for, with them local vars];
    -- The delete operator;
-Its usage:
    -- To de-allocate memory(pointers);
    -- Cleanup for a class object and its class members;
    .. "If it isn't used then the default (generated by compiler) will used";
    .. "THE returned function of use-effect in React :DD";
-Its defined outside class by (AS any separated interface):
    ## ClassName::~ClassName() {};
-Example:
    ## int *arr = new int[100];
    ## ~MyVector() { delete[] arr; };


-This pointer:
--------------
-It is an implicit param to all members (data && functions) of the created object from outside;
-It contains the pointer to the address in memory;

To make our method Fancy: (HOMEwork_06);
    -- Time& SomeSetter return *this;
    ## a.setHourse(5).setMinuts(30)...;
    .. "Return the obj itself (destructs it first) by reference - without copy or creating new";



41 02 Initializer list {};
======================
-It is a "template" of type T:
-It is a list of elements like vector of params "rest parameters in JS";
-It is a light weight and memory efficient;

01
-Syntax as a constructor in class:
    01 ClassName(const initializer_list<int> &lst) {};
    02 ClassMethod(const initializer_list<int> &lst) {};
       ClassMethod(int a, int b) {};
    ## ClassName.ClassMethod({1,2}) // the one with init_list;
    ## ClassName.ClassMethod(1,2)   // the regular method (pre-defined of two params);
       .. "AS argus are different :D";

-Aggregate initialization:
    -- struct A {int a, b};
    ## A a {1, 2};
    .. "THE two vars in that struct which has no any constructors will abind a and b with those argus";
    .. "IT is smart enough to guess :D";
-Regular && Initialization_list initializations && and them priority:
    -- struct C {
       int a, b;
       C(int a, int b) : a(a), b(b) {};
       C(const initializer_list<int> &lst) {};
    }
    ## C c1 {1, 2} // init_list constructor;
    ## C c2 (1, 2) // regular_constructor (pre-defined constructor if exist - of two params);
    .. "ITS higher than pre-defiend constructors in priority (if calling done with {}list_init not with ()regular)";
    .. "Priority of {} => init_list{} >> regular_call() >> 03 aggregate";
    .. "Priority of () => regular_call() >> init_list{} >> 03 aggregate";

02
-Syntax with our templates:
    -- Defining: template<typename T> 
    -- Calling: temp_method<initializer_list<int>>({1,2,3,..}) ;
    .. "SUCH as temp_method<vector<int>>()";
03
-Syntax with STL templates:
    -- vector<int> v1 {5, 10}; // (init_list constructor (literaly)) two values one is 5 and the other is 10 ;
    .. "Calls the init_list constructor";
    -- vector<int> v2 (5,10);  // 5 values all of them is 10 ;
    .. "Calls another constructor works in different way";

    -- multimap<int, int> map1 { pair<int, int>(1,40) , pair<int, int>(1,50) };
    -- multimap<int, int> map2 { {1, 40}, {1, 50} } // init_list;
04
-With auto:
    -- auto x1 = {1, 2} // init_list<init>;
    @REM -- auto x2 = {1, 2.0} // cannot deduce element type (Mixing two types);
    @REM -- auto x3 {1, 2} // not a single element (Mixing values without copy);
    -- auto x4 = {3} // single init_list<int>;
    -- auto x5 {3} // int since C++14;



41 03 Class defaulted
=====================
-As we know we can't define an instance of default constructor if there is a paramaterized and no default one:
    .. "Empty or default paramtarized";

-There are 4 ways for default construct with empty body;
    01 Explicitly declare\define one;
    ## A() {};
    .. "User-provided constructor (1/2)";
    02 Write nothing and no parameterized constructor;
    ## ;
    03 Declare/Define in class with the keyword default;
    ## C() = default;
    04 Declare one in a class and implement it with the keyword default;
    ## D::D() = default;
       .. "User-provided constructor (2/2) even if we defined it later with default";
    .. "The user-provided (W1 && W4) is different than not-defined (compiler-generated)";

-There are two ways to init an instance:
    -- Default initialization - the undermined value:
       01 ClassName obj;
       .. "Garbage value in the 4 ways (user-porivded constructor or even compiler-generated)";
    -- Value-initialization triggered by () or {}:
       02 ClassName obj {};
       02 ClassName obj ();
       .. "Garbage in case user-porivded (01 && 04) AS we init them to non-value (garbage) BY not init them explicitly";
       .. "AND zero-val in case 02 && 03 (compiler-generated as he calls their default constructor)";
       .. "Compiler-generated of non-user-provided has mechansim to assign types to its default values";



41 04 Deleting function (Constructor, Member function, Copy, Assignment);
=======================
-We can prevent 01 ( not compile ) a function that called in a specific way:
    ## ClassName(double slr, string name) = delete;
    // ClassName c {10.0, "Legend"};
    ## ClassMethod(int a);
       ClassMethod(double a) = delete;
    // ClassName.ClassMethod(1.0);
    .. "WILL not compile (double no BUT int ok)";
-We can prevent 02 copy constructors:
    -- ClassName(const ClassName&) = delete;
    // ClassName e2(e1);
-We can prevent 03 assignment operator:
    -- ClassName& operator=(const ClassName&) = delete;
    // e2 = e1;
    .. "= of the type\DS of ClassName";
    .. "NOW we prevented any assignment operation on that DS";

-TIPS for beginners if we have a class with pointer member var:
    01 Delete copy ing constructor;
    02 Delete assignment operator;
    .. "THIS will warn us when we wanna create/assign an object";


41 05 Copy constructor
======================
-Shallow copy vs Deep copy ;
-Shallow copy as assigning:
    ## B = A;
    -- Each value of B data (method && vars && PTRs) will changed to the corrisponding of A data (RE-writting);
    -- Each ref of B (method && vars && ptrs) will be the same as it;
    .. "The values CHANGED but main ref NO even in ptrs";
    .. "PTRs value changed which pointing to some(address) place in memory - MEMORY LEAK (gone without delete)!";
    .. "IT is a problem when we delete it with destructors";
-Deep copy :
    .. "Change only the destructor(*ptr) of ptr with remain the val of address and the ref as they are NO CHANGE";
    .. "NO change of ref or value JUST the value of ptr value (*ptr - destruct)";
    01 ClassName c(b);
    02 ClassName d = b;

-Temporary object:
    -- It an object that doesn't have a name CREATED on the fly :D;
    -- Its rule in params is that can't be passed to a non-const ref LIKE temprorary primitive argus exactly;
    ## AMethod(const ClassName &argu) {};
    // AMethod(ClassName &obj) // We can't pass temp object ;
    .. "AMethod(ClassName obj) is a copy of coming obj";
    .. "MOVE semantic AMethod(ClassName &&obj)"


41 06 Const with classes (methods and object) && ACCESS denied;
========================
01 In methods:
-It is better to create as much as possible constants functions (getters/print/compute);
-It is a message means this member function doesn't make any change of data members;
    ## double ComputeArea() const {return width * height};
    ## double GetWidth() const {return width};

02 In object:
-It means this object mustn't call non-const methods:
    ## Setters methods can't called or getting a CError;
    // obj.SetWidth(10):
    .. "CError ACCESS denied (non-const method) :D";

03 Const and pointers:
-Const data BUT not const pointer:
    ## const ClassName* obj = new ClassName();
    .. "Can't call non-constant methods - const data uses only const data";
    .. "May be assigned to another ptr OK";
-Const pointer BUT not const data:
    ## ClassName* const obj = new ClassName();
    .. "Can call \ have access to data"
    .. "Wouldn't assigned to another ptr - obj address val wouldn't change";
-Const pointer && const data:
    ## const ClassName* const obj = new ClassName();

04 Const with member data and setter methods:
-Constant vars initialized only once and can't change ;
    -- We can't change it using list_init member:
       // ClassName(double w, double h) : width(w), height(h), AConstVar(AVal) {};
    .. "CERROR - AConstVar is a const initialized only once in its declartion";
    .. "Constant vars in data member are a bit slower !! AVOID them";

05 Const && "THE PRINCIPLE OF least privilege":
-By using const methods we reduce the errors that might done;
    -- Its like we reduce the permisions and only allow some specific ones to reduce errors;
    -- Its idea is that:
    .. "EVERY user/program/process SHOULD HAVE ONLY the bare minimum privileges neccessary to perform its function";


41 07 Static with class
=======================
-Its declared once in memory till program ends as we know IN ITS SCOPE :D;

01 Static data member:
-Its like class vars in JavaScript accessed only by the class itself not from objects;
-Its declaration shared among the all objects of a class in classes (defined only once); 
-Its syntax:
    -- It is a wiered something as it defined outside the class as it isn't accessible by objs:
    ## int ClassName::SVar = 1;
    .. "THEY should initialized outside after defining inside - to avoid any problems";
    .. "AS we call the class in each instanciating .. INIT IN EACH CALL !!";

02 Static member function:
-It is shared among all "static data members" and accessible only by the class itself;
-It can not see the non-static data members as they (instanciated) belong to objs itself not to the class itself;
-Example:
    ## ClassName() {++ClassName::SVar;};
    .. "FOR keeping track num of objs that created by counting how many constructor called by inc SVar in each time";
    ## static int GetNumOfObjs() {return ClassName::Svar};
    .. "Getting back the num of objects that have been created";


41 08 Friend class
==================
-IT ISN't HEALTHY;



===================================
===== 43 01 UML Class Diagram ===== (Unified modeling language);
===================================
-Did you know that we can represent system/task in three ways:
    -- Naturl text (Like function requirments)!!;
    -- Draw a diagram using UML;
    -- OR Just code the task BOY :D - do it without describe it in natrual text or diagram (NO-details) LOL :D;
-Did you know that we can communicate the system\task details with others in two ways:
    -- Writtin documents (one aspect);
    -- Drawing diagrams to visualize the different aspects of the system/task;


-It is a strandarized modeling language for software visualization purposes:
    .. "SUCH (as HTML standard for web)";
-Its tools:
    -- Lucidchart (Online) - very nice and easy to use;
    -- [UMbrello]: is a tool dedicated UML based modelling;
       .. "It draw and can export-import code from/to severla languages";
    -- [ArgoUML, Visual Paradigm, StarUML, Microsoft visio];
-Its types are two:
    01 Structural diagrams [Class diagrams, Deployment diagrams, Packages, Component, Object, ...];
    02 Behavioral diagrams (State machine diagrams, communication, activity, ...);
-The Class diagrams (WHICH we'll study):
    -- One Block with title at top center;
    -- Body under title divided to two sections first for data members and the down section for member methods;
    -- Public data represents with (+):
       && private represents with (-):
       && protected represent with ();
    ## (sign) DataName : type [, = init_val IF exist for data members ];


43 02 Classes relationship
==========================
-In complix systems we have several classes that have relationships between them and they are 04 :
    01 Association:
        -- "Two different entites has been happen a normal connection between them";
        ## User borrows a book;
        ## User add_item to shopping cart;

    02 Aggregation ("The Has A relation", "THE SUM relation :DD"):
        .. "It is a weak \ no ownershipt \ not strong related as such as composition";
        ## Department has employee;

    03 Composition: "The real Has a relation":
        .. "It is the whole and its parts \ compossed of \ very related";
        ## Unviversity has departments 
           -- If uni clossed then the part close too;
        ## A Car has an engine (contains wheels);
           -- Engine has no value to be used independently (without a car);
        ## A room has walls;
           -- If ther is a used wall, it must be in a specific room;

    04 Generalization (Inheritance, "الاصل"):
        .. "The relation is (is a)";
        ## Circle is a shape;
        ## Bicycle is a vehicle;
        ## Student is a person;

-[Association "جمعية" >> Aggregation "مجمل - تجميع لي" >> (Composition "التكوين الاساسي")];

Composition ("Composed of"):
    -- Strong relationship (consists of - whole and its parts - part belongs to the whole);
    -- The whole creates\destroys its parts;
    -- Parts is only used by the whole ();
    -- Parts have no life of itself;
    >> It allows reusability (use something over and over (the classes of parts));
    .. "IT Represents by a black diagnol (square\tringle\arrow) GOING FROM it to another in UML";
    .. "IT is read composed of ... or ... belongs to .";

Aggregation:
    -- It is a weak relationship between its other parts  (no-ownership);
    -- Whole class or other classes can create the parts;
    -- If whole object is destroyed, the other parts may still be in use by others;
    ## Departments && Professors (IF it shut-down prof are exist as they )
    ## Book && Auther;
    ## Magazine && Article;
    .. "IT Represents by a white diagnoal (square) going from it and called (This aggregated of ..part)"

Generalization in UML:
    ## Fruit => [Apple, orange]
    ## Account => [Checking account, Savings account, Credit account, ...];
    ## Animal => [Cat, Mammal=>[Horse], Dog];
    ## Vehicle => [Water v, Road v=> [Bicycle, Car=>[(Engine), (Wheel)]]];
    .. "Inside () means composite relation";
    .. "IT Represents by an empty(white) tringle\arrow";




43 03 Multiplicity && Associations type s
=========================================
-Multiplicity specify cardinalty HOW many of this class should instanciats (used);
    ## Each center will have only 1 lobby;
    ## Each center will have at least 1 or 2 bathroom;
    .. "IT represents by number on arrows .. they enhance the diagram by those info";
-Multiplicity table:
    ## 0..0     // Collection must be empty;
    ## 0..1     // No instances or one instance;
    ## x..x     // Exacly x NO more no less;
    ## x..*     // Instance is x (at least x) - and they are up-to forever;
    ## x..n     // Instance is x (at least x) - and they are up-to n;

-Associations relationship type s:
    01 One-to-one associations:
    ## Class citizin has a single national ID;
    02 One-to-many associations:
    ## Customr has many accounts;
    03 Many-to-many associations (MySQL :DDD):
    ## Students has many(vector of) courses:
    && Courses has many(vector of) students too;

43 04 Relationshipts && Multiplicity
====================================
-Composition relation (parent) should have at least one;
    -- Its parts may be at least 0 instances;
-Aggregation relation:
    -- Others may be at least 0 instances;


43 05 UML in practice (GOOD video watch it again leg!);
=====================
01
-The big picture of communicating is the core items the core features;
    .. "DON't describe each single info !! JUST the important one";
03
-Avoid a non 90 degree arrows;
04
-Inheritance relationships better to go up (from bottom to up):
    .. "DON't draw from top to bottom .. make the root parent at top and arrows goes to it from children";


43 06 Class diagram and design skills
=====================================
-Skills not learned from courses as knowledge BUT it gained from practice with time;
    .. "YOU are good when you bridge the gap between your first design & last";



==========================
===== 46 Inheritance =====
==========================
===========================
===== 46 Ploymorphism =====
===========================
-It is One of the strongest feature in OOP;
-It is means (have many forms);
-Before it if we was instanciate a child of parent type then child will behave as a parent:
    .. "MTHODS of child that inherted will not re-written ..  the parent methods wich will be used";
    .. "WE cam create a child of parent class type BUT versus no";
-Virtual ploymorphism keyword:
    -- It is used to handle this problem (to behave on the 01 created obj itself not on 02 pointer type );
    -- It means existing in appearance BUT not in reality;
    -- It expects to other that there will be override by children on those methods;
    -- If it exists on any level of sequnce of inherts ALL coming will be virtual even if we didn't write explicitly;
       ## ParentClass {virtual method1() {}};
       ## ChildClass : ParentClass {method1() {}}; // It is a virtual from prev level (didn't need to write again);
    .. "THEN the data of virutal will be re-written and used by the instance";
    .. "THE method is virutal too as default in ChildClass even if we didn't write it explicitly";
-We can call the explicit method of parent from child ptr by:
    ## ptr_child->ParentClass::method1();


46 02 Compiler vs runtime behavriour
====================================
-Non-Virtual binding:
    -- Compile time Polymorphism (static/early binding);
-Virtual binding:
    -- Run- time Polymorphism (dynamic/late binding);
    -- A pointer calling func either to base or derived (many forms);
    -- This dynamic bidning allows us write GENERIC code without knowing the exact children;


=========================================================================
============================== 4 Modern C++ =============================
=========================================================================

=============================
===== 46 01 Inheritance =====
=============================
-What might be common data members and functions?
-What might be unique data members and functions?

-It is the "is-a AGE relationship";
-It is used to avoid duplications code of our members (data && methods);
-It is achive the princple of Reusability:
    -- The ability to reuse the existing coding efforts for a new function instead of duplicating efforts;
    .. "These codes are well-written, tested and bug-fixed! Resources were consumed in that"

-OO has 2 reusability approaches: Inheritance and Composition "Allows building hierarchy of classes and relations":
    01 Composition: has-a relationship;
    02 Inheritance: is-a relationship;

-We call Person Class (Parent):
    -- Base Class in C++;
    -- Superclass in Java;
    -- General;
-We call Student Class (Child):
    -- Derived Class in C++;
    -- Subclass in Java
    -- Specific;

Tips from homework:
- Whenever you have a parent class, "Mammal homework (giveBirth (!lay eggs!))"
  make sure it is VALID for all possible future sub-classes, not only current ones (features). 
  Your teammates will extend your work in the future!
- The "diamond problem" occurs when two superclasses of a class have a common base class. 
  "POLYMORPHISM problem" 01 inheriting by virtual solves that problem;
                         02 better to depend on Interfaces;
                         


46 02 Inheritance && data-hiding && protected
=============================================
-By inherting we break the principle of data-hiding IF we make all data public to inherit them:
    .. "AND if we make thme private then we'll not see anything !!";
-The protected access modifire came to solve some of this problem as:
    01 Our children can see our internals;
    02 Outsiders can’t;
    .. "STILL break the principle of data-hiding :D";
    .. "Private ⇒ No one see it; Protected ⇒ Child see it, Outsiders No; Public ⇒ Anyone sees it"

-Type of inherit:
    01 Multiple Inheritance:
    ## class TeachingAssistant: public Student, public Employee {};
    02 Multilevel Inheritance:
    ## class Graduate : public Student(which inherit from: public Person) {};






==========================
===== 2 Ploymorphism =====
==========================
=========================
===== 3 Inheritance =====
=========================
==========================
===== 4 Ploymorphism =====
==========================
=========================
===== 5 Inheritance =====
=========================
==========================
===== 6 Ploymorphism =====
==========================


