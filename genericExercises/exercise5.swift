func genericMap<T, U>(_ array: [T], transform: (T) -> U) -> [U] {
    var result: [U] = []
    for element in array {
        result.append(transform(element))
    }
    return result
}

let intArray = [1, 2, 3]
let stringArray = genericMap(intArray) { "\($0)" }
print(stringArray)
