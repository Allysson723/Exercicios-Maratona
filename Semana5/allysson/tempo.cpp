#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

int main() {
    int N;
    cin >> N;

    unordered_map<int, int> tempoRecebimento;
    unordered_map<int, int> tempoTotalRespostas;

    int tempoAnterior = 0;
    int tempoResposta = 0;

    for (int i = 0; i < N; i++) {
        char tipoEvento;
        int idAmigo;
        cin >> tipoEvento >> idAmigo;

        if (tipoEvento == 'R') {
            tempoRecebimento[idAmigo] = tempoAnterior;
        } else if (tipoEvento == 'E') {
            if (tempoRecebimento.find(idAmigo) != tempoRecebimento.end()) {
                tempoResposta = tempoAnterior - tempoRecebimento[idAmigo];
                tempoTotalRespostas[idAmigo] += tempoResposta > 0 ? tempoResposta : 1; // Se o tempo for zero, adiciona 1 segundo
                tempoRecebimento.erase(idAmigo);
            } else {
                tempoTotalRespostas[idAmigo] = -1;
            }
        } else {
            tempoAnterior += idAmigo;
        }
    }

    // Verifica se ainda há amigos com mensagens pendentes e atribui -1 ao tempo de resposta total deles
    for (auto& par : tempoRecebimento) {
        tempoTotalRespostas[par.first] = -1;
    }

    // Saída
    for (auto& entrada : tempoTotalRespostas) {
        cout << entrada.first << " " << entrada.second << endl;
    }

    return 0;
}
