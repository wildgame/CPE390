#include <iostream>
using namespace std;

extern unsigned char checksum(const char mystring[]);
int main() {
	cout << (int)checksum("ABC") << '/n';
	cout << (int)checksum("abcdef") << '/n';
}
