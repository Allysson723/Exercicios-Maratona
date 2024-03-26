#include <iostream>

using namespace std;

struct Sala {
    int x1, y1, x2, y2;
};

bool comparaSala(const Sala& sala1, const Sala& sala2) {
    return sala1.x1 <= sala2.x1 && sala1.y1 >= sala2.y1  && sala1.x2 >= sala2.x2 && sala1.y2 <= sala2.y2;
}

int main() {
    int N;
    cin >> N;
    Sala salas[N];
    for (int i = 0; i < N; ++i) {
        cin >> salas[i].x1 >> salas[i].y1 >> salas[i].x2 >> salas[i].y2;
    }
    int roteadores = 0;
    for (int i = 0; i < N; i++) {
        bool contem = false;
        for (int j = 0; j < N; j++) {
            if(i != j){
                contem = comparaSala(salas[i], salas[j]);
                if (contem) {
                    break;
                }
            }
        }
        if (!contem) {
            roteadores++;
        }
    }
    cout << roteadores;
    return 0;
}
