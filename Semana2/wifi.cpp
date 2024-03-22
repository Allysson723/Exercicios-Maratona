#include <iostream>

using namespace std;

int main() {
    int N;
    cin >> N;
    int salas[N][4];
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < 4; j++) {
            cin >> salas[i][j];
        }
    }
    int roteadores = 0;
    for (int i = 0; i < N; i++) {
        bool contido = false;
        for (int j = 0; j < N; j++) {
            if (i != j &&
                salas[i][0] >= salas[j][0] &&
                salas[i][1] <= salas[j][1] &&
                salas[i][2] <= salas[j][2] &&
                salas[i][3] >= salas[j][3]) {
                contido = true;
                break;
            }
        }
        if (!contido) {
            roteadores++;
        }
    }
    cout << roteadores;
    return 0;
}
