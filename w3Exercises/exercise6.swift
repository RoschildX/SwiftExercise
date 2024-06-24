protocol Drawable {
    func draw()
}

class Circle {
    func draw() {
        print("Circle")
    }
}

class Rectangle {
    func draw() {
        print("Rectangle")
    }
}

class Triangle {
    func draw() {
        print("Triangle")
    }
}

let shapes: [Drawable] = [Circle(), Rectangle(), Triangle()]

for shape in shapes {
    shape.draw()
}
