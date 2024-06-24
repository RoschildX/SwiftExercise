protocol Resizable {
    func resizeWidth(width: Int)
    func resizeHeight(height: Int)
}

class Rectangle: Resizable {
    private var width: Int
    private var height: Int

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    func resizeWidth(width: Int) {
        self.width = width
    }

    func resizeHeight(height: Int) {
        self.height = height
    }

    func displayDimensions() {
        print("Rectangle width: \(width), height: \(height)")
    }
}

let rectangle = Rectangle(width: 10, height: 5)
rectangle.displayDimensions()
height: 5

rectangle.resizeWidth(width: 15)
rectangle.resizeHeight(height: 20)
rectangle.displayDimensions()

