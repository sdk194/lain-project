#include <iostream>
using namespace std;

int main() {
	int input;
	cin >> input;
	for (int i = 1; i < input + 1; i++) {
		if (!(i % 3) && !(i % 5)) {
			cout << "fizzbuzz\n";
		}
		else if(!(i % 3)) {
			cout << "fizz\n";
		}
		else if (!(i % 5)) {
			cout << "buzz\n";
		}
		else {
			cout << i << endl;
		}
	}
}
