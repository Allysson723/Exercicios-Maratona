#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

int main() {
    int N, M;
    cin >> N >> M;

    while(N != M && N != 0){
        unordered_map<int, vector<string>> servidores;
        unordered_map<int, vector<string>> clientes;
        for (int i = 0; i < N; i++) {
            int S;
            cin >> S;
            for (int j = 0; j < S; j++) {
                string A;
                cin >> A;
                servidores[S].push_back(A);
            }
        }

        for (int i = 0; i < M; i++) {
            int C;
            cin >> C;
            for (int j = 0; j < C; j++) {
                string A;
                cin >> A;
                clientes[C].push_back(A);
            }
        }
        cin >> N >> M;
    }
    return 0;
}
