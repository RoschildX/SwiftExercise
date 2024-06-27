func genericFilter<T>(_ array: [T], predicate: (T) -> Bool) -> [T] {
    var result: [T] = []
    for element in array {
        if predicate(element) {
            result.append(element)
        }
    }
    return result
}

let numbers = [1, 2, 3, 4, 5, 6]
let evenNumbers = genericFilter(numbers) { $0 % 2 == 0 }
print(evenNumbers)

