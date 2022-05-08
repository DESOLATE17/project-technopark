#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
#include <vector>
#include <locale>
#include <map>

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

bool check_familiar_words(const string& a) {
    vector <string> prepositions = { "безо", "близ",  "вместо", "из-за", "из-под", "кроме", "между",
                                    "перед", "передо","пред", "пред", "подо", "ради",  "сквозь", "среди", "через", "чрез"};
    if (find(prepositions.begin(), prepositions.end(),a) != prepositions.end()) {
        return true;
    }
    vector <string> unions = {"вдобавок", "именно", "также", "благодаря", "тому", "благо", "буде", "будто",
                                    "если", "из-за", "дабы", "даже", "едва", "лишь", "ежели", "затем",
                                    "зато", "зачем", "значит", "следовательно", "тогда", "кабы", "как-то",
                                    "коли", "либо", "ради", "нежели", "только", "невзирая", "независимо", "несмотря", "однако",
                                    "особенно", "оттого", "отчего", "пока", "покамест", "покуда", "поскольку",
                                    "потому", "почему", "прежде", "притом", "причем", "пускай", "пусть", "ради", "раньше",
                                    "словно", "также", "тогда", "тоже", "только", "точно", "хотя", "чтоб", "чтобы"
                                    };
    if (find(unions.begin(), unions.end(),a) != unions.end()) {
        return true;
    }

    return false;
}

/*int MyToLower (char r) {
    switch (r) {
        case 'А':
            r = 'а';
            break;
        case 'Б':
            r = 'б';
            break;
        case 'В':
            r = 'в';
            break;
        case 'Г':
            r = 'г';
            break;
        case 'Д':
            r = 'д';
            break;
        case 'Е':
            r = 'е';
            break;
        case 'Ж':
            r = 'ж';
            break;
        case 'З':
            r = 'з';
            break;
        case 'И':
            r = 'и';
            break;
        case 'Й':
            r = 'й';
            break;
        case 'К':
            r = 'к';
            break;
        case 'Л':
            r = 'л';
            break;
        case 'М':
            r = 'м';
            break;
        case 'Н':
            r = 'н';
            break;
        case 'О':
            r = 'о';
            break;
        case 'П':
            r = 'п';
            break;
        case 'Р':
            r = 'р';
            break;
        case 'С':
            r = 'с';
            break;
        case 'Т':
            r = 'т';
            break;
        case 'У':
            r = 'у';
            break;
        case 'Ф':
            r = 'ф';
            break;
        case 'Х':
            r = 'х';
            break;
        case 'Ц':
            r = 'ц';
            break;
        case 'Ч':
            r = 'ч';
            break;
        case 'Ш':
            r = 'ш';
            break;
        case 'Щ':
            r = 'щ';
            break;
        case 'Ъ':
            r = 'ъ';
            break;
        case 'Ы':
            r = 'ы';
            break;
        case 'Ь':
            r = 'ь';
            break;
        case 'Э':
            r = 'э';
            break;
        case 'Ю':
            r = 'ю';
            break;
        case 'Я':
            r = 'я';
            break;
    }
    return (r);
}*/


int main() {


    system("chcp 65001");
    ifstream in("C:\\sibir_labs\\project-technopark\\cmake-build-debug\\file1.txt");

    map <string, int> base_file;
    string tmp;

    while (!in.eof()) {

        in >> tmp; //считываем слово
        delete_symbol(tmp);// убираем знаки препинания вначале и конце слова, если например: работа,  или .Цель
        transform(tmp.begin(), tmp.end(), tmp.begin(),
                       [](unsigned char c){ return tolower(c); }); // приводим к нижнему регистру латиницу
        // приводим к нижнему регистру кириллицу
        // применяем библиотеку
        if (!check_familiar_words(tmp)) { // проверяем на предлог, союз
            if (tmp.length() > 6) { // из-за UTF-8

                ++base_file[tmp];

            }
        }

    }

    for (auto el : base_file) {
        cout << el.first << "=" << el.second << endl;
    }
    in.close();

    // используем алгоритм сравнения
    return 0;
}
