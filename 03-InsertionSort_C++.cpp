/*
    O código a seguir foi escrito em C++ e corresponde ao InsertionSort genérico, cuja função é ordenar uma lista de qualquer tipo.
    Para tratar os dados genericamente, utilizei templates.
*/

#include<iostream>
#include<vector>
using namespace std;

template <class T>
void InsertionSort(T arr[], int n) {
	int i, j;
	T temp;
	for (int i = 1; i < n; ++i) {
		temp = arr[i];
		j = i - 1;
		while (j >= 0 && arr[j] > temp) {
			arr[j + 1] = arr[j];
			j = j - 1;
		}
		arr[j + 1] = temp;
	}
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

    cout<<"The sorted intArray sorted is"<<endl;
    int n = sizeof(intArray) / sizeof(int);
    InsertionSort(intArray, n);
    PrintArray(intArray, n);

    cout<<"The sorted stringArray sorted is"<<endl;
    int n2 = sizeof(stringArray) / sizeof(string);
    InsertionSort(stringArray, n2);
    PrintArray(stringArray, n2);

    cout<<"The sorted floatArray sorted is"<<endl;
    int n3 = sizeof(floatArray) / sizeof(float);
    InsertionSort(floatArray, n3);
    PrintArray(floatArray, n3);
    
    return 0;
}