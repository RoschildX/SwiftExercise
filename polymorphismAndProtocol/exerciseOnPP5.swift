import Foundation

protocol GeometricObject {
    func getArea() -> Double
    func getPerimeter() -> Double
}

protocol Resizable {
    func resize(percent: Int)
}

class Circle: GeometricObject {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func getPerimeter() -> Double {
        return 2 * Double.pi * radius
    }
    
    func getArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
}

class ResizableCircle: Circle, Resizable {
    func resize(percent: Int) {
        let scaleFactor = 1 + Double(percent) / 100.0
        radius *= scaleFactor
    }
}


var resizableCircle = ResizableCircle(radius: 3)
print(resizableCircle.getArea())
resizableCircle.resize(percent: 30)
print(resizableCircle.getArea())
