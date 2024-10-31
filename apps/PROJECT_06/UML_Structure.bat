01 Inheritance: applyied seperatly in separated files:
                not shown explicitly in the UML diagram AS IS normal;
02 Composition: the access class composes the instances of User and Admin:
                as it owns and manages their lifecycles as it responsiple for
                (creating, deleting and controlling access for both of them);
                
03 SOLID principles: applyied the ISP principle (Interface segregation principle),
                     by spliting the access class into smaller, more focused interfaces.
                     and making access implement only relevant methods of each interface,
                     (improving code read-ability and mainain-ability);
                     (practicing on the principle of polymorphism too);



My big problems ( 01 ):
    When you init the inherted data YOU can't do it with the member init_list
    as they non-static (or base class of class)
    >> AND the funist part is I knowed and fixed this problem BUT
    >> I felt in another by copy the member data and paste it as IT !!
    .. "I should change the param name with the data member name e.g. username=username_"
    .. "I forget the underscore SO in each time i instanciate the username is fixed which is empty ^_^";