#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

struct Sala {
    int x1, y1, x2, y2, area;
};

bool sala2ContemSala1(const Sala &sala1, const Sala &sala2) {
    return sala1.x1 >= sala2.x1 && sala1.y1 <= sala2.y1 && sala1.x2 <= sala2.x2 && sala1.y2 >= sala2.y2;
}

bool comparaSalaPorArea(const Sala &sala1, const Sala &sala2) {
    return sala1.area < sala2.area;
}

int main() {
    int N;
    cin >> N;
    vector<Sala> salas(N);
    for (int i = 0; i < N; ++i) {
        cin >> salas[i].x1 >> salas[i].y1 >> salas[i].x2 >> salas[i].y2;
        salas[i].area = abs(salas[i].x2 - salas[i].x1) * abs(salas[i].y2 - salas[i].y1);
    }
    sort(salas.begin(), salas.end(), comparaSalaPorArea);
    for (int i = 0; i < N - 1; i++) {
        for (int j = i + 1; j < N; j++) {
            if (sala2ContemSala1(salas[i], salas[j])) {
                salas.erase(salas.begin() + j);
                N--;
                j--;
            }
        }
    }
    cout << salas.size();
    return 0;
}
