#include <iostream>
#include <vector>
#include <unordered_map>
#include <queue>
#include <limits>

using namespace std;

struct Cidade {
    int numero;
    int distancia;
    int origem;
    bool explorado;
};

int menorDistancia(vector<vector<pair<int, int>>>& grafo, int inicio, int fim) {
    int n = grafo.size();
    vector<Cidade> cidades(n + 1);
    for (int i = 1; i <= n; ++i) {
        //maior valor inteiro em c++ -> numeric_limits<int>::max()
        cidades[i] = {i, numeric_limits<int>::max(), -1, false};
    }

    cidades[inicio].distancia = 0;
    cidades[inicio].origem = 0;

    priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> pq;
    pq.push({0, inicio});

    while (!pq.empty()) {
        int cidadeAtual = pq.top().second;
        pq.pop();

        if (cidades[cidadeAtual].explorado)
            continue;

        cidades[cidadeAtual].explorado = true;

        for (auto& neighbor : grafo[cidadeAtual]) {
            int cidadeVizinha = neighbor.first;
            int distancia = neighbor.second;

            if (cidades[cidadeVizinha].distancia > cidades[cidadeAtual].distancia + distancia) {
                cidades[cidadeVizinha].distancia = cidades[cidadeAtual].distancia + distancia;
                cidades[cidadeVizinha].origem = cidadeAtual;
                pq.push({cidades[cidadeVizinha].distancia, cidadeVizinha});
            }
        }
    }

    return cidades[fim].distancia;
}

int main() {
    int N, A, B;
    cin >> N >> A >> B;

    vector<vector<pair<int, int>>> grafo(N + 1);

    for (int i = 1; i < N; ++i) {
        int P, Q, D;
        cin >> P >> Q >> D;
        grafo[P].push_back({Q, D});
        grafo[Q].push_back({P, D});
    }

    int distancia = menorDistancia(grafo, A, B);
    cout << distancia << endl;

    return 0;
}
