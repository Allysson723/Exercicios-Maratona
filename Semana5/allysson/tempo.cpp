#include <iostream>
#include <algorithm>
#include <vector>
#include <limits>

using namespace std;

bool jaExiste(const std::vector<std::pair<int, int>> &amigos, int x) {
    for (const auto &par: amigos) {
        if (par.first == x) {
            return true;
        }
    }
    return false;
}

int main() {
    int N;
    cin >> N;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');
    vector<pair<char, int>> registros;
    vector<pair<int, int>> amigos;
    for (int i = 0; i < N; ++i) {
        char A;
        int B;
        cin >> A >> B;
        if (i != 0 && A != 'T') {
            amigos[i - 1].second += 1;
        } else if (i != 0) {
            //todos
            amigos[i - 1].second += B;
        }
        registros.push_back({A, B});
        if (A != 'T' && !jaExiste(amigos, B)) {
            amigos.push_back({B, 0});
        }
    }
    for (const auto &par: amigos) {
        cout << par.first << " " << par.second << endl;
    }
    return 0;
}
