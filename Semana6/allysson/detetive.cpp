#include <iostream>
#include <vector>
#include <queue>
#include <unordered_map>
#include <algorithm>

using namespace std;

void bfs(int start, const unordered_map<int, vector<int>>& adj, vector<bool>& visitado, vector<int>& verdadeiros) {
    queue<int> q;
    q.push(start);
    visitado[start] = true;
    verdadeiros.push_back(start);

    while (!q.empty()) {
        int evento = q.front();
        q.pop();

        if (adj.find(evento) != adj.end()) {
            for (int vizinho : adj.at(evento)) {
                if (!visitado[vizinho]) {
                    visitado[vizinho] = true;
                    verdadeiros.push_back(vizinho);
                    q.push(vizinho);
                }
            }
        }
    }
}

void verificarCausas(const unordered_map<int, vector<int>>& adjTransposto, vector<bool>& visitado, vector<int>& verdadeiros) {
    bool mudanca = true;
    while (mudanca) {
        mudanca = false;
        vector<int> novosVerdadeiros;
        for (int evento : verdadeiros) {
            if (adjTransposto.find(evento) != adjTransposto.end()) {
                for (int causa : adjTransposto.at(evento)) {
                    if (!visitado[causa]) {
                        bool todasCausasVerdadeiras = true;
                        if (adjTransposto.find(causa) != adjTransposto.end()) {
                            for (int causaDeCausa : adjTransposto.at(causa)) {
                                if (!visitado[causaDeCausa]) {
                                    todasCausasVerdadeiras = false;
                                    break;
                                }
                            }
                        }
                        if (todasCausasVerdadeiras) {
                            visitado[causa] = true;
                            novosVerdadeiros.push_back(causa);
                            mudanca = true;
                        }
                    }
                }
            }
        }
        for (int novo : novosVerdadeiros) {
            verdadeiros.push_back(novo);
        }
    }
}

int main() {
    int E, I, V;
    cin >> E >> I >> V;

    unordered_map<int, vector<int>> adj;
    unordered_map<int, vector<int>> adjTransposto;

    for (int i = 0; i < I; ++i) {
        int A, B;
        cin >> A >> B;
        adj[A].push_back(B);
        adjTransposto[B].push_back(A);
    }

    vector<int> verdadeiros;
    vector<bool> visitado(E + 1, false);

    for (int i = 0; i < V; ++i) {
        int X;
        cin >> X;
        if (!visitado[X]) {
            bfs(X, adj, visitado, verdadeiros);
        }
    }

    verificarCausas(adjTransposto, visitado, verdadeiros);

    sort(verdadeiros.begin(), verdadeiros.end());

    for (int evento : verdadeiros) {
        cout << evento << " ";
    }
    cout << endl;



    return 0;
}
