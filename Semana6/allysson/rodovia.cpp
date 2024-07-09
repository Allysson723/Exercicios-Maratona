#include <iostream>
#include <vector>

using namespace std;

int main() {
    int N;
    cin >> N;

    vector<pair<int, int>> rodovias(N);

    for (int i = 0; i < N; ++i) {
        int A, B;
        cin >> A >> B;
        //caso a cidade A já tenha uma rodovia de saída o plano está errado
        //o mesmo vale caso a cidade B já tenha uma rodovia de entrada
        rodovias[i] = {A, B};
    }

}
