import Foundation


protocol Shape {
    func getArea() -> Double
}


class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func getArea() -> Double {
        return width * height
    }
}


class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func getArea() -> Double {
        return Double.pi * radius * radius
    }
}


class Triangle: Shape {
    var base: Double
    var height: Double
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    func getArea() -> Double {
        return 0.5 * base * height
    }
}


let rectangle = Rectangle(width: 10, height: 5)
print("Rectangle Area: \(rectangle.getArea())") 

let circle = Circle(radius: 7)
print("Circle Area: \(circle.getArea())") 

let triangle = Triangle(base: 6, height: 8)
print("Triangle Area: \(triangle.getArea())") 
