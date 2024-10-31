#include <iostream>
#include <fstream>
using namespace std;


struct Qustion {
    void PrintToMe() {};
    void PrintFromMe() {};
    void Answer() {};
    void Delete() {};
    void Ask() {};
};


struct Session {

    bool is_session_active {true};

    void PrintMenu() {
        cout << "User Session Menu:" << endl;
        cout << "\t01: Print Quistions To Me" << endl;
        cout << "\t02: Print Quistions From Me" << endl;
        cout << "\t03: Answer Quistions" << endl;
        cout << "\t04: Delete Quistions" << endl;
        cout << "\t05: Ask Quistions" << endl;
        cout << "\t06: List System Users" << endl;
        cout << "\t07: Feed" << endl;
        cout << "\t08: Logout" << endl;
    };

    void PrintMenuQuistion() {
        cout << "Enter number in range 1-8: ";
    };

    void Choose() {
        Qustion quis {};
        int ch {};

        cin >> ch;
        if (ch == 1) {
            quis.PrintToMe();
        } else if (ch == 2) {
            quis.PrintFromMe();
        } else if (ch == 3) {
            quis.Answer();
        } else if (ch == 4) {
            quis.Delete();
        } else if (ch == 5) {
            quis.Ask();
        } else if (ch == 6) {

        } else if (ch == 7) {

        } else if (ch == 8) {
            is_session_active = false;
        } else {
            cout << "ERROR: invalid choice ... try again!" << endl << endl;
        };
    };
};


struct Login {

    bool IsExist(string account) {
        string path {"users_db.legend"};
        fstream file_handler(path.c_str());
        if (file_handler.fail()) {
            cout << "Can't fined file.. Access Denied!" << endl;
        };

        string line {};
        while (getline(file_handler, line)) {
            int start=0, end=0;
            string extracted_account {};
            for (int i=0, n=0; i<line.size(); i++) {
                if (line[i] == ',') {
                    if (n==0)
                        start = i+1;
                    else if (n==2)
                        end = i;
                    n++;
                };
            };

            for (int i=start; i<end; i++)
                extracted_account += line[i];

            if (extracted_account == account) {
                file_handler.close();
                return true;
            };
        };
        
        cout << "Account's (user or password) isn't correct .. try again!" << endl << endl;
        file_handler.close();
        return false;
    };


    void In(string account=",0") {
        if (account == ",0") {
            string username {};
            int password {};
            cout << "Enter username && password: ";
            cin >> username >> password;
            account = username + "," + to_string(password);
        };

        if (IsExist(account)) {
            Session session {};
            session.PrintMenu();
            while (session.is_session_active) {
                session.PrintMenuQuistion();
                session.Choose();
            };
        };
    };
};


struct Signup {

    void Save(string account_line) {
        auto status {ios::in | ios::out | ios::app};
        string path {"users_db.legend"};
        fstream file_handler(path.c_str(), status);

        if (file_handler.fail()) {
            cout << "Can't write on disk .. Access Denied!" << endl;
        };
        
        file_handler << account_line << endl;
        file_handler.close();
    };


    void Up() {
        int id {};
        int password {};
        bool accept_anonymous_quistions;
        string username {"Anonyoums"};
        string full_name {"Anonymous_one"};
        string email;

        cout << "Rules are: [with no spaces" << endl;
        cout << "Enter full_name: ";
                cin >> full_name;
        cout << "Enter username: ";
                cin >> username;
        cout << "Enter password: ";
                cin >> password;
        cout << "Enter email: ";
                cin >> email;
        cout << "Enter unique INT ID (as we didn't have db yet :D ): ";
            cin >> id;
        cout << "Allow anonymous quistions? (1/0): ";
                cin >> accept_anonymous_quistions;

        string account {
            username + ","
            + to_string(password)
        };
        string account_details {
            to_string(id) + ","
            + username + ","
            + to_string(password) + ","
            + full_name + ","
            + email + ","
            + to_string(accept_anonymous_quistions)
        };

        cout << "Account detailes are: " << account_details << endl;
        Save(account_details);
        Login login {};
        login.In(account);
    };
};


struct Enter {
    void PrintMenu() {
        cout << "Enter Menu:" << endl;
        cout << "\t01: Login" << endl;
        cout << "\t02: Signup" << endl;
    };

    void PrintMenuQuistion() {
        cout << "Enter number in range 1-2: ";
    };

    void Choose() {
        Login login {};
        Signup signup {};
        int ch {};
        cin >> ch;

        if (ch == 1) {
            login.In();
        } else if (ch == 2) {
            signup.Up();
        } else {
            // Failed choice number;
            cout << "ERROR: invalid choice ... try again!" << endl << endl;
        };
    };
};


void AskMe() {
    Enter enter {};
    bool is_session {false};
    while (true) {
        enter.PrintMenu();
        enter.PrintMenuQuistion();
        enter.Choose();
    };
}


int main() {
    AskMe();
    cout << endl;
    return 0;
};