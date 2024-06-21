import Foundation

protocol GeometricObject {
    func getArea() -> Double
    func getPerimeter() -> Double
}

struct Circle: GeometricObject {
    var radius: Double 
    
    func getArea() -> Double {
        return Double.pi * pow(radius, 2) 
    }
    
    func getPerimeter() -> Double {
        return 2 * Double.pi * radius
    }
}

struct Rectangle: GeometricObject {
    var width: Double
    var length: Double
    
    func getArea() -> Double {
        return width * length 
    }
    
    func getPerimeter() -> Double {
        return 2 * (width * length)
    }
}
