#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
#include <vector>
using namespace std;

void delete_symbol(string& a) {

    vector <char> symbols = {',', '.', '?', '!', ';', ':', ')', '(', '}', '{', '\"', '\''};
    while (find(symbols.begin(), symbols.end(),a[a.size() - 1]) != symbols.end()) {
        a.resize(a.size() - 1);
    }
    while (find(symbols.begin(), symbols.end(),a[0]) != symbols.end()) {
        a.erase(0);
    }
}

int main() {
    system ("chcp 65001");
    ifstream in("C:\\sibir_labs\\project-technopark\\cmake-build-debug\\file1.txt");
    vector <string> text;
    string tmp;
    while (!in.eof()) {
        in >> tmp;
        delete_symbol(tmp);
        if (tmp.size() > 2 )
        text.push_back(tmp);
    }
    for (size_t i = 0; i < text.size(); ++i) {
        cout << text[i] << " ";
    }
    in.close();
    return 0;
}
