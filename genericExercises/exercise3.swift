struct Pair<T, U> {
    let first: T
    let second: U
}

let pair = Pair(first: 1, second: "Hello")
print(pair.first)
print(pair.second) 
