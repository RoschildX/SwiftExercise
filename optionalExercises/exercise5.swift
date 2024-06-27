let numbers: [Int?] = [1, 2, nil, 4, nil, 5]

func sumOfNonNilValues(numbers: [Int?]) -> Int {
    var sum = 0
    for number in numbers {
        if let num = number {
            sum += num
        }
    }
    return sum
}

let total = sumOfNonNilValues(numbers: numbers)
print("The sum of non-nil values is \(total)"
