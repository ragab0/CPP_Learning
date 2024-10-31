UNION data type
===============
It is a user-defined data type ;
It offers memory optimization when dealing with scenarios where only one member will be active at a time ;
It allows us to store different data types (or different vars of a type) within the same memory location:
    Only one member of the union can hold a value at any given time ;
    Means that assigning a value to one member overwrites any previous value stored in the union;
    ## union Square {width, height};
    .. "width and height are the same SO we'll the the same location then :D";

BECAREFUL (Type Safety): 
    Unlike structures, unions lack type safety. You need to be explicit about the member you're accessing 
    to ensure you're interpreting the data correctly. This can lead to errors if not handled carefully.


Alternatives to Unions
----------------------
01 std::variant (C++17 and later): 
   Provides a type-safe alternative for unions. 
   It allows you to store different data types and know the exact type at compile time.
02 Separate Variables: overwriteing the var with new vals from the type (as it won't change);



The pair
========
It created by:
    >> make_pair(i, j);
    >> {i,j};

The unordered_map && unordered_multimap
=======================================
Its methdos:
    -- .at(i) causes error if index not exists UNLIKE [] which returns 0 ;
    -- .insert(a_pair) doesn't insert if the key is exists UNLIKE [] which modify the val;
    -- .find(key) returns an iterator if not exist then .end();