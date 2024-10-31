#include <iostream>
#include <queue>
#include <stack>
#include <tuple>
#include <set>
using namespace std;


/**
 * 01 Queue;
 * 02 PQueue;
 * 03 DeQueue;
 * 
*/
void practice_queues() {
    queue<int> q;
    priority_queue<int> pq;
    deque<int> dq;

    q.push(5); q.push(1); q.push(9); q.push(3);
    pq.push(5); pq.push(1); pq.push(9); pq.push(3);
    dq.push_front(5); dq.push_front(1); dq.push_front(9); dq.push_front(3);

    cout << "Queue: ";
    while (!q.empty()) cout << q.front() << (q.pop(), " ");
    cout << endl << "PQueue: ";
    while (!pq.empty()) cout << pq.top() << (pq.pop(), " ");
    cout << endl;
}


/**
 * 04 Stack data structure;
*/
void practice_stack() {
    stack<int> s;
    cout << "Stack: " << endl;
}


/**
 * 05 Pair data structure;
*/
void practice_pair() {
    pair<int, pair<double, string>> p1;
    pair<int, pair<double, string>> p2 {make_pair(1, make_pair(2.2, "legend_maker"))};
    pair<int, pair<double, string>> p3 {1, {2.2, "legend_list"}};
    cout << "Pair: " << p1.second.second << endl;
    cout << "Pair: " << p2.second.second << endl;
    cout << "Pair: " << p3.second.second << endl;
}


/**
 * 06 Tuple data structure;
*/
void practice_tuple() {
    tuple<int, double, string> tpl1;
    tuple<int, double, string> tpl2 {2, 2.2, "Legend"};
    tuple<int, double, string> tpl3;
    tpl3 = {3, 2.2, "Legend"};

    int i;
    double d;
    string s;

    tie(i, d, s) = tpl3;

    cout << "Tuple: " << get<0>(tpl1) << endl;
    cout << "Tuple: " << get<0>(tpl2) << endl;
    cout << "Tuple: " << get<0>(tpl3) << endl;
    cout << "Tuple: " << s << endl;
}




/**
 * 08 Iterators;
*/
void practice_iteratos() {
    deque<int> dq {1,2,3,4};
    deque<int>::iterator p1 = dq.begin();
    cout << "Tuple: " << endl;
};


/**
 * 09 Vector data structure;
*/
void practice_vector() {
    vector<int> v1 {5,7}; // Only two element 5 && 7;
    vector<int> v2 (5,7); // Allocate 5 elements with init val of 7;

    cout << "Vector: " << v1[0] << endl;
    cout << "Vector: " << v2[0] << endl;
};


/**
 * 10 Set data structure;
*/
void practice_set() {

    set<int> s {1,2,3,4};
    s.insert(55);

    if (s.count(55))
        cout << "Yea counted" << endl;
    if (set<int>::iterator it = s.find(55); it != s.end())
        cout << "Yea founded && FASTER than count" << endl;

    cout << "Set: " << endl;
};


int main() {
    practice_set();
    cout << endl;
    return 0;
}
