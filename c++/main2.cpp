#include <chrono>
#include <fstream>

class Base {};

int main() {
    auto start = std::chrono::high_resolution_clock::now();

    for (int i = 0; i < 100000000; ++i) {
	    Base obj;
    }

    auto finish = std::chrono::high_resolution_clock::now();
    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(finish - start);
    std::ofstream fout("output.txt", std::ios::app);

    fout << elapsed.count() << "\n";

    fout.close();

    return 0;
}
