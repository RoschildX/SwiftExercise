// TODO: MyTriangle Class 

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

var point1 = MyPoint(x: 1, y: 2)
print(point1.distance(x: 3, y: 4))
let point2 = MyPoint(x: 3, y: 4)
let point3 = MyPoint(x: 6, y: 8)

print(point1.toString())
print("Distance to origin: \(point1.distance())")
print("Distance to point2: \(point1.distance(another: point2))")
print("Distance to coordinates (10, 10): \(point1.distance(x: 10, y: 10))")






class MyTriangle {
    private var v1: MyPoint
    private var v2: MyPoint
    private var v3: MyPoint
    
    init(x1: Int, y1: Int, x2: Int, y2: Int, x3: Int, y3: Int) {
        
        v1 = MyPoint(x: x1, y: y1)
        v2 = MyPoint(x: x2, y: y2)
        v3 = MyPoint(x: x3, y: y3)
    }
    
    func toString() -> String {
        return "MyTriangle[v1 = (v1.getXY()), v2.getXY()), v3.getXY())]"
    }
    
    func getPerimeter() -> Double {
        let distance1 = v1.distance(another: v2)
        let distance2 = v2.distance(another: v3)
        let distance3 = v1.distance(another: v3)
        
        return distance1 + distance2 + distance3
    }

    func printType() -> String {
        if v1.distance(another: v2) == v2.distance(another: v3) && v1.distance(another: v2) == v1.distance(another: v3) {
            return "equilateral"
        } else if v1.distance(another: v2) == v2.distance(another: v3) || v1.distance(another: v2) == v1.distance(another: v3) || v2.distance(another: v3) == v1.distance(another: v3) {
            return "isosceles"
        } else {
            return "scalene"
        }
    }
}