
import Foundation 

// TODO: Another Circle Class

class Circle {
    private var radius: Double = 1.0
    
    init(radius: Double) {
        self.radius = radius
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
    
    func getCircumference() -> Double {
        return 2 * Double.pi * radius
    }

    func toString() -> String {
        return "The radius of circle is \(radius). The area of circle is \(getArea()) and the circuference of the circle is \(getCircumference())"
    }
    
}

var circle = Circle(radius: 2.2)
print(circle.getRadius())
print(circle.toString())
