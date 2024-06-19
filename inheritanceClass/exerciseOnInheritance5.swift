// TODO:Superclass Shape, subclass Circle, Rectangle, Square.

import Foundation

class Shape {
    private var color: String = "red"
    private var filled: Bool = true
    
    init(color: String, filled: Bool) {
        self.color = color
        self.filled = filled
    }
    
    func getColor() -> String {
        return color
    }
    
    func setColor(color: String) {
        self.color = color
    } 
    
    func isFilled() -> Bool {
        return filled
    } 
    
    func setFilled(filled: Bool) {
        self.filled = filled
    }
    
    func toString() -> String {
        return "Shape [color, \(getColor()), \(isFilled())]"
    }
}


class circle: Shape {
    private var radius: Double = 1.0 
    
    init(radius: Double, color: String, filled: Bool) {
        self.radius = radius 
        super.init(color: color, filled: filled) 
    }
    
    func getRadius() -> Double {
        return radius 
    }
    
    func setRadius(radius: Double) {
        self.radius = radius
    } 
    
    func getArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    func getPerimeter() -> Double {
        return 2 * Double.pi * radius 
    }
    
    override func toString() -> String {
        return "Circle[\(super.toString())], radius =  \(radius)]"
    }
}
    

class Rectangle: Shape {
    private var width: Double = 1.0
    private var length: Double = 1.0 
    
    init(width: Double, length: Double, color: String, filled: Bool) {
        
        self.width = width
        self.length = length
        super.init(color: color, filled: filled)
    }
    
    func getWidth() -> Double {
        return width 
    }
    
    func setWidth(width: Double) {
        self.width = width 
    } 
    
    func getLength() -> Double {
        return length 
    }
    
    func setLength(length: Double) {
        self.length = length 
    } 
    
    func getArea() -> Double {
        return width * length
    }
    
    func getPerimeter() -> Double {
        let totalWidth = 2 * width 
        let totalLength = 2 * length 
        return totalWidth + totalLength 
    }
    
    override func toString() -> String {
        return "Rectangle [\(super.toString())] , width = \(getWidth()), length = \(getLength())]"
    }
} 
    
    
class Square: Rectangle {
    init(side: Double, color: String, filled: Bool) {
        super.init(width: side, length: side, color: color, filled: filled)
    }
    
    func getSide() -> Double {
        return getWidth()
    }
    
    func setSide(side: Double) {
        setWidth(width: side)
        setLength(length: side)
    } 
    
    override func setWidth(width: Double) {
        setSide(side: width)
    }

    override func setLength(length: Double) {
        setSide(side: length)
    }
    
    override func toString() -> String {
        return "Rectangle[\(super.toString())], width = \(getSide())) length = \(getSide())"
    }
}
    


var square = Square(side: 5.00, color: "yellow", filled: true)
    
print(square.getSide())