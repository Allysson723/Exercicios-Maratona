#include <iostream>
#include <vector>

using namespace std;

int main() {
    int E, I, V;
    cin >> E >> I >> V;

    vector<pair<int, int>> implicacao(I);

    vector<int> eventosVerdadeiros(V);

    for (int i = 0; i < I; ++i) {
        int A, B;
        cin >> A >> B;
        implicacao[i] = {A, B};
    }

    for (int i = 0; i < V; ++i) {
        int X;
        cin >> X;
        eventosVerdadeiros[i] = X;
    }

    //

}
