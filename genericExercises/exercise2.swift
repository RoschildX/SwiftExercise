// TODO: Generic Queue

class Queue<T> {
    private var elements: [T] = []

    func enqueue(_ element: T) {
        elements.append(element)
    }

    func dequeue() -> T? {
        guard !elements.isEmpty else { return nil }
        return elements.removeFirst()
    }

    func peek() -> T? {
        return elements.first
    }

    func isEmpty() -> Bool {
        return elements.isEmpty
    }
}

let stringQueue = Queue<String>()
stringQueue.enqueue("A")
stringQueue.enqueue("B")
print(stringQueue.dequeue() ?? "Queue is empty")
print(stringQueue.peek() ?? "Queue is empty")
