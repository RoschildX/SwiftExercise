class Stack<T> {
    private var elements: [T] = []

    func push(_ element: T) {
        elements.append(element)
    }

    func pop() -> T? {
        return elements.popLast()
    }

    func peek() -> T? {
        return elements.last
    }

    func isEmpty() -> Bool {
        return elements.isEmpty
    }
}

let intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
print(intStack.pop() ?? "Stack is empty")
print(intStack.peek() ?? "Stack is empty") 
