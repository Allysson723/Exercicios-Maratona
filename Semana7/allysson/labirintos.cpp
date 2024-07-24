#include <iostream>
#include <vector>
#include <unordered_map>
#include <queue>
#include <algorithm>

using namespace std;

int contaMovimentos(int inicio, unordered_map<int, vector<int>> &arestas) {
    int movimentos = 0;
    queue<int> fila;
    fila.push(inicio);

    while (!fila.empty()) {
        int nodo = fila.front();
        auto it = arestas.find(nodo);
        for (int vizinho: arestas.at(nodo)) {
            fila.push(vizinho);
            movimentos++;
            vector<int>& nodos = it->second;
            auto vecIt = find(nodos.begin(), nodos.end(), vizinho);
            nodos.erase(vecIt);
            break;
        }
    }

    return movimentos;
}

int main() {
    int T;
    cin >> T;
    //próximos casos de teste
    if(T > 1){
        for(){

        }
    }
    int N;
    cin >> N;
    int V, A;
    cin >> V >> A;

    unordered_map<int, vector<int>> arestas;

    for (int i = 0; i < A; i++) {
        int I, F;
        cin >> I >> F;
        arestas[I].push_back(F);
        arestas[F].push_back(I);
    }

    cout << contaMovimentos(N, arestas) << endl;

    return 0;
}
