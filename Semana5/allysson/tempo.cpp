#include <iostream>
#include <vector>
#include <map>

using namespace std;

int main() {
    int N;
    cin >> N;
    vector<pair<char, int>> registros;
    map<int, pair<int, bool>> amigos;

    for (int i = 0; i < N; ++i) {
        char C;
        int I;
        cin >> C >> I;
        registros.push_back({C, I});
        if (C != 'T') {
            if (amigos.find(I) == amigos.end()) {
                amigos[I] = {0, true};
            }
        }
    }
    amigos[registros[0].second].second = false;
    for (int i = 1; i < N; ++i) {
        if (registros[i].first != 'T') {
            if (registros[i].first == 'E') {
                // Alterando o estado de resposta do amigo para true
                amigos[registros[i].second].second = true;
            }else{
                amigos[registros[i].second].second = false;
            }
            // Adicionando 1 ao tempo de resposta de todos os amigos não respondidos
            for (auto &amigo: amigos) {
                if (!amigo.second.second && amigo.first != registros[i].second) {
                    amigo.second.first++;
                }
            }
        } else {
            // Adicionando o tempo do registro ao tempo de resposta de todos os amigos não respondidos
            for (auto &amigo: amigos) {
                if (!amigo.second.second) {
                    amigo.second.first += registros[i].second;
                }
            }
        }
    }
    for (const auto &amigo: amigos) {
        // Se o amigo não tiver respondido a todas as mensagens, imprime -1 como tempo de resposta total
        int tempo_resposta_total = amigo.second.second ? amigo.second.first : -1;
        cout << amigo.first << " " << tempo_resposta_total << endl;
    }

    return 0;
}
