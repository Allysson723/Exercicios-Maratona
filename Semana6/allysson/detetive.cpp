#include <iostream>
#include <vector>
#include <algorithm>

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

    for (int i = 0; i < I; ++i) {
        for (int j = 0; j < V; ++j) {
            if (implicacao[i].first == eventosVerdadeiros[j]) {
                if (find(eventosVerdadeiros.begin(), eventosVerdadeiros.end(), implicacao[i].second) == eventosVerdadeiros.end()) {
                    eventosVerdadeiros.push_back(implicacao[i].second);
                    i = 0;
                    j = 0;
                }
            }
            if (implicacao[i].second == eventosVerdadeiros[j] && implicacao[i].second != ) {

            }
        }
    }

    return 0;

}
