#include <iostream>
#include <vector>
#include <unordered_map>

using namespace std;

//conecta um cliente ao mesmo servidor mais de uma vez
void conectaCliente(vector<string> aplicacoesCliente, unordered_map<string, vector<int>> aplicacoes, int &conexoes) {
    for(string aplicacaoCliente : aplicacoesCliente){
        //passar por todas as aplicações e quando forem iguais a aplicacao do cliente fazer uma conexão para cada servidor que a fornece e retirar esse servidor
        for(int i = 0; i < aplicacoes.size(); i++){
            for(string aplicacao : aplicacoes.at()){
                if(aplicacoesCliente == aplicacaoS){
                    conexoes++;
                    break;
                }
            }
        }
    }
}

int main() {
    int N, M;
    cin >> N >> M;

    while(N != M && N != 0){
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
        for(int i = 0; i < M; i++){
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
