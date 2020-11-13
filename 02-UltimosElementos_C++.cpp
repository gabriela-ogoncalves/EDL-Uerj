/* Programa escrito em C++ para imprimir o último elemento de um array qualquer, utilizando template. */

#include<iostream>
#include<vector>
using namespace std;

template <class T>
void lastElement(T arr[], int n) {
    cout << arr[n - 1] << endl;
}

template <class T>
void PrintArray(T arr[], int n) {
	for (int i = 0; i < n; ++i) {
		cout << arr[i] << ' ';
	}
	cout << endl;
}

int main() {
    int intArray[]= {5, 4, 10, 6, 2, 1, 0};
    string stringArray[]= {"g","a","b","r","i","e","l","a"};
    float floatArray[]= {1.0, 1.5, 1.3, 1.9, 1.2, 1.1, 1.7};

    cout<<"The last element of intArray is: ";
    int n = sizeof(intArray) / sizeof(int);
    lastElement(intArray, n);

    cout<<"The last element of stringArray is: ";
    int n2 = sizeof(stringArray) / sizeof(string);
    lastElement(stringArray, n2);

    cout<<"The last element of floatArray is: ";
    int n3 = sizeof(floatArray) / sizeof(float);
    lastElement(floatArray, n3);
    
    return 0;
}