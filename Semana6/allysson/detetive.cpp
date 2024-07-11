#include <iostream>
#include <vector>
#include <queue>
#include <unordered_map>
#include <algorithm>

using namespace std;

// Função para realizar uma busca em largura (BFS) a partir dos eventos verdadeiros determinados pela agência
void verificaConsequencias(int inicio, const unordered_map<int, vector<int>> &causas, vector<bool> &visitado, vector<int> &verdadeiros) {
    queue<int> fila;
    fila.push(inicio);
    visitado[inicio] = true;
    verdadeiros.push_back(inicio);

    while (!fila.empty()) {
        int evento = fila.front();
        fila.pop();
        if (causas.find(evento) != causas.end()) {
            for (int consequencia: causas.at(evento)) {
                if (!visitado[consequencia]) {
                    visitado[consequencia] = true;
                    verdadeiros.push_back(consequencia);
                    fila.push(consequencia);
                }
            }
        }
    }
}

void verificaCausas(const unordered_map<int, vector<int>> &consequencias, vector<bool> &visitado, vector<int> &verdadeiros) {
    bool mudanca = true;
    while (mudanca) {
        mudanca = false;
        vector<int> novosVerdadeiros;
        for (int evento: verdadeiros) {
            if (consequencias.find(evento) != consequencias.end()) {
                for (int causa: consequencias.at(evento)) {
                    if (!visitado[causa]) {
                        if (consequencias.find(causa) != consequencias.end()) {
                            if (consequencias.at(causa).size() == 1) {
                                visitado[causa] = true;
                                novosVerdadeiros.push_back(causa);
                                mudanca = true;
                            }
                        }
                    }
                }
            }
        }
        for (int novo: novosVerdadeiros) {
            verdadeiros.push_back(novo);
        }
    }
}

int main() {
    int E, I, V;
    cin >> E >> I >> V;

    unordered_map<int, vector<int>> causas;
    unordered_map<int, vector<int>> consequencias;

    for (int i = 0; i < I; ++i) {
        int A, B;
        cin >> A >> B;
        causas[A].push_back(B);
        consequencias[B].push_back(A);
    }

    vector<int> verdadeiros;
    vector<bool> visitado(E + 1, false);

    for (int i = 0; i < V; ++i) {
        int X;
        cin >> X;
        if (!visitado[X]) {
            verificaConsequencias(X, causas, visitado, verdadeiros);
        }
    }

    verificaCausas(consequencias, visitado, verdadeiros);

    sort(verdadeiros.begin(), verdadeiros.end());

    for (int evento: verdadeiros) {
        cout << evento << " ";
    }
    cout << endl;

    return 0;
}
