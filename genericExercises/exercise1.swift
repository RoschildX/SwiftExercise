class Calculator<T: Numeric> {
    func add(_ num1: T, _ num2: T) -> T {
        return num1 + num2
    }
}

let calculator = Calculator<Int>()
print(calculator.add(1, 2))
