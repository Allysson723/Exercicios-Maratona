#include <iostream>
#include <algorithm>
#include <vector>
#include <string>

using namespace std;

int main() {
    string baralho;
    vector<string> cartas;
    vector<int> cartasNaipe;
    int numero;
    bool erro = false;
    for (int i = 0; i < baralho.length(); i += 3) {
        cartas.push_back(baralho.substr(i, 1));
        if (cartas[i + 2] == "C") {
            numero = stoi(cartas[i + 2] + cartas[i + 2]);
            cartasNaipe.push_back(numero);
            auto it = find(cartasNaipe.begin(), cartasNaipe.end(), numero);
            if(it != cartasNaipe.end()){
                erro = !erro;
                cout << "erro" << endl;
            }
        } else if (cartas[i + 2] == "E") {
            if(cartas[i - 1] != "E"){
                if(!erro){
                    cout << cartasNaipe.size() << endl;
                }
                cartasNaipe.clear();
                erro = !erro;
            }
            numero = stoi(cartas[i + 2] + cartas[i + 2]);
            cartasNaipe.push_back(numero);
            auto it = find(cartasNaipe.begin(), cartasNaipe.end(), numero);
            if(it != cartasNaipe.end()){
                erro = !erro;
                cout << "erro" << endl;
            }
        } else if (cartas[i + 2] == "U") {
            if(cartas[i - 1] != "E"){
                if(!erro){
                    cout << cartasNaipe.size() << endl;
                }
                cartasNaipe.clear();
                erro = !erro;
            }
            numero = stoi(cartas[i + 2] + cartas[i + 2]);
            cartasNaipe.push_back(numero);
            auto it = find(cartasNaipe.begin(), cartasNaipe.end(), numero);
            if(it != cartasNaipe.end()){
                erro = !erro;
                cout << "erro" << endl;
            }
        } else {
            if(cartas[i - 1] != "E"){
                if(!erro){
                    cout << cartasNaipe.size() << endl;
                }
                cartasNaipe.clear();
                erro = !erro;
            }
            numero = stoi(cartas[i + 2] + cartas[i + 2]);
            cartasNaipe.push_back(numero);
            auto it = find(cartasNaipe.begin(), cartasNaipe.end(), numero);
            if(it != cartasNaipe.end()){
                erro = !erro;
                cout << "erro" << endl;
            }
        }
    }
    if(erro){
        cout << "erro" << endl;
    }
    return 0;
}
