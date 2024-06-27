// TODO: Circle and cylinder classes

import Foundation

class Circle {
    private var radius: Double
    private var color: String
    
    init(radius: Double, color: String = "Red") {
        self.radius = radius
        self.color = color
    }
    
    func getRadius() -> Double {
        return radius
    }
    
    func setRadius(radius: Double) {
        self.radius = radius
    }
    
    func getColor() -> String {
        return color
    }
    
    func setColor(color: String) {
        self.color = color
    }
    
    func toString() -> String {
        return "Circle[radius = \(radius), color = \(color)] "
    }
}


class Cylinder: Circle {
    private var height: Double = 1.0
    
    init(radius: Double, color: String, height: Double) {
        self.height = height
        super.init(radius: radius, color: color)
    }
    
    func getHeight() -> Double {
        return height
    }
    
    func setHeight(height: Double) {
        self.height = height
    }
    
    func getVolume() -> Double {
        return Double.pi * pow(getRadius(), 2) * getHeight() 
    }
}


let myCylinder = Cylinder(radius: 5.0, color: "Blue", height: 10.0)
print(myCylinder.toString()) 
print(myCylinder.getHeight()) 
myCylinder.setHeight(height: 15.0)
print(myCylinder.getHeight()) 
print(myCylinder.getVolume()) 
