#include <iostream>
#include <vector>
#include <unordered_map>
#include <queue>
#include <limits>

using namespace std;


int main() {
    int N, zerosInARow = 0, soma = 0;

    cin >> N;

    int numeros[N];


    for(int i = 0; i < N; i++){
        int numero;
        cin >> numero;

        if(numero == 0){
            zerosInARow++;

            for(int j = i-zerosInARow; numeros[j] == 0; j--){
                numeros[j] = 0;
            }

        }else {
            zerosInARow = 0;
        }
        numeros[i] = numero;
    }

    for(int i = 0; i < N; i++){
        cout << numeros[i] << " ";
        soma += numeros[i];
    }
    cout << soma;


    return 0;
}
