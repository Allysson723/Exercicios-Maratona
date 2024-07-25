#include <iostream>
#include <vector>
#include <unordered_map>
#include <algorithm>

using namespace std;

void conectaCliente(vector<string> aplicacoesCliente, unordered_map<string, vector<int>> aplicacoes, int &conexoes) {
    for (string aplicacaoCliente: aplicacoesCliente) {
        for (int servidor: aplicacoes.at(aplicacaoCliente)) {
            auto it = aplicacoes.find(aplicacaoCliente);
            vector<int>& servidores = it->second;
            servidores.erase(find(servidores.begin(), servidores.end(), servidor));
            conexoes++;
            break;
        }
    }
}

int main() {
    int N, M;
    cin >> N >> M;

    while (N != M && N != 0) {
        int conexoes = 0;
        unordered_map<string, vector<int>> aplicacoes;
        unordered_map<int, vector<string>> clientes;
        for (int i = 0; i < N; i++) {
            int S;
            cin >> S;
            for (int j = 0; j < S; j++) {
                string A;
                cin >> A;
                aplicacoes[A].push_back(j);
            }
        }

        for (int i = 0; i < M; i++) {
            int C;
            cin >> C;
            for (int j = 0; j < C; j++) {
                string A;
                cin >> A;
                clientes[i].push_back(A);
            }
        }
        for (int i = 0; i < M; i++) {
            auto it = clientes.find(i);
            vector<string> aplicacoesCliente = it->second;
            conectaCliente(aplicacoesCliente, aplicacoes, conexoes);
        }
        cout << conexoes << endl;
        conexoes = 0;
        cin >> N >> M;
    }
    return 0;
}
