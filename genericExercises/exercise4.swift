func genericSort<T: Comparable>(_ array: [T]) -> [T] {
    return array.sorted()
}

let intArray = [3, 1, 4, 1, 5, 9]
print(genericSort(intArray))

let stringArray = ["banana", "apple", "cherry"]
print(genericSort(stringArray))  
