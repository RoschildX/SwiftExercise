func swapKeysAndValues<K, V>(_ dictionary: [K: V]) -> [V: K] where K: Hashable, V: Hashable {
    var swappedDictionary: [V: K] = [:]
    for (key, value) in dictionary {
        swappedDictionary[value] = key
    }
    return swappedDictionary
}

let originalDict = ["one": 1, "two": 2, "three": 3]
let swappedDict = swapKeysAndValues(originalDict)
print(swappedDict)  

