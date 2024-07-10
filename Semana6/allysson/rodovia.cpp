#include <iostream>
#include <vector>

using namespace std;

bool encontraRodovia(int A, int B, vector<pair<int, int>> rodovias) {

    for (auto &rodovia: rodovias) {
        if (rodovia.first == A && rodovia.second == B) {
            return true;
        }else if(rodovia.first == A) {
            return encontraRodovia(rodovia.first, B, rodovias);
        }
    }

    /*  6
        1 2
        2 3
        3 1
        4 5
        5 6
        6 4
        */

    /*  6
        1 2
        2 3
        4 1
        5 6
        3 5
        6 4
*/

}

int main() {
    int N;
    cin >> N;

    vector<pair<int, int>> rodovias(N);

    for (int i = 0; i < N; ++i) {
        int A, B;
        cin >> A >> B;
        //caso a cidade A já tenha uma rodovia de saída o plano está errado
        //o mesmo vale caso a cidade B já tenha uma rodovia de entrada
       /* for (auto &rodovia: rodovias) {
            *//*cout << "A: " << rodovia.first << ", B: " << rodovia.second << endl;*//*
            if (rodovia.first == A || rodovia.second == B) {
                cout << "N";
                return 0;
            }
        }*/
        rodovias[i] = {A, B};
    }

    for (int i = 0; i < N; ++i) {

        encontraRodovia()
    }

    cout << "S";

    return 0;

}
