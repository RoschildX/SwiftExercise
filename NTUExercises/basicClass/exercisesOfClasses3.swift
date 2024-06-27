// TODO: Rectangle Class

class Rectangle {
    private var length: Float = 1.0
    private var width: Float = 1.0
    
    init(length: Float, width: Float) {
        self.length = length
        self.width = width
    }
    
    func getLength() -> Float {
        return length
    }

    func setLength(length: Float) {
        self.length = length
    }
    
    func getWidth() -> Float {
        return width
    }
    
    func setWidth(width: Float) {
        self.width = width
    }
    
    func getArea() -> Double {
        return Double(width * length)
    }
    
    func getPerimeter() -> Double {
    
        let totalLength = length * 2
        let totalWidth = width * 2
        
        return Double(totalLength + totalWidth)
    }
    
    func toString() -> String {
        return "Rectangle[length = \(getLength())), width = \(getWidth())]"
    }
}


var rectangle = Rectangle(length: 6.85, width: 8.36)
print(rectangle.getPerimeter())
print(rectangle.toString())

