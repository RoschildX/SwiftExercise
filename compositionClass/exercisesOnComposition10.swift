// TODO: MyRectangle Class 

import Foundation

class MyPoint {
    private var x: Int = 0
    private var y: Int = 0
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    
    func setX(x: Int) {
        self.x = x
    }
    
    func setY(y: Int) {
        self.y = y
    }
    
    func getX() -> Int {
        return x
    }
    
    func getY() -> Int {
        return y
    }
    
    func setXY(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func getXY() -> [Int] {
        return [x, y]
    }
    
    func toString() -> String {
        return "\(x), \(y)"
    }
    
    func distance(x: Int, y: Int) -> Double {
        let dx = Double(self.x - x)
        let dy = Double(self.y - y)
        return sqrt(dx * dx + dy * dy)
    }
    
    
    func distance(another: MyPoint) -> Double {
        return distance(x: another.getX(), y: another.getY())
    }
    
    func distance() -> Double {
        return distance(x: 0, y: 0)
    }

}

class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func getPerimeter() -> Double {
        return 2 * (width + height)
    }

    func printType() -> String {
        if width == height {
            return "square"
        } else {
            return "rectangle"
        }
    }
}

