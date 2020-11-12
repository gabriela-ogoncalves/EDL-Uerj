/*
    O código a seguir foi escrito em Java e corresponde ao InsertionSort genérico, cuja função é ordenar uma lista de qualquer tipo.
    Para tratar os dados genericamente, utilizei generics.
*/

public class InsertionSortGeneric<T extends Comparable<? super T>> {
    public static void main(String[] args) {
        
        Integer[] arrayOfInt = {5, 4, 10, 6, 2, 1, 0};
        InsertionSortGeneric<Integer> intSorter = new InsertionSortGeneric<>();
        intSorter.insertionSort(arrayOfInt);
        System.out.println(java.util.Arrays.toString(arrayOfInt));
        
        String[] arrayOfStrings = {"g","a","b","r","i","e","l","a"};
        InsertionSortGeneric<String> stringSorter = new InsertionSortGeneric<>();
        stringSorter.insertionSort(arrayOfStrings);
        System.out.println(java.util.Arrays.toString(arrayOfStrings));

        Double[] arrayOfDoubles = {1.0, 1.5, 1.3, 1.9, 1.2, 1.1, 1.7};
        InsertionSortGeneric<Double> doubleSorter = new InsertionSortGeneric<>();
        doubleSorter.insertionSort(arrayOfDoubles);
        System.out.println(java.util.Arrays.toString(arrayOfDoubles));
    }

    void insertionSort(T[] array) {
        for (int i = 1; i < array.length; i++) {
            int currentIndex = i;
            while (currentIndex > 0 && array[currentIndex - 1].compareTo(array[currentIndex]) > 0) {
                T temp = array[currentIndex];
                array[currentIndex] = array[currentIndex - 1];
                array[currentIndex - 1] = temp;
                currentIndex--;
            }
        }
    }
}