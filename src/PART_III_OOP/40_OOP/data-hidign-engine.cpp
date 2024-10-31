#include <iostream>
#include <vector>
using namespace std;


class Result {
    Result() = default;
};

class Settings {
    Settings() = default;
};

class Engine {
public:
    vector<Result> Search(string query="", Settings settings) {
        return vector<Result>();
    };
};


int main() {

    Engine e;
    vector<Result> results = e.Search("Ragab eid portfolio", Settings{});

    cout << endl;
    return 0;
}
