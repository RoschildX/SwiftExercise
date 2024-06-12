import UIKit

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

print(point1.toString())  // Output: Point at (3, 4)
print("Distance to origin: \(point1.distance())")  // Output: Distance to origin: 5.0
print("Distance to point2: \(point1.distance(another: point2))")  // Output: Distance to point2: 5.656854249492381
print("Distance to coordinates (10, 10): \(point1.distance(x: 10, y: 10))")  // Output: Distance to coordinates (10, 10): 8.602325267042627



// TODO: Myline & Mypoint Classes


class MyLine {
    private var begin: MyPoint
    private var end: MyPoint
    
    // Initializer to set begin and end points directly
    init(begin: MyPoint, end: MyPoint) {
        self.begin = begin
        self.end = end
    }
    
    // Initializer to set points using coordinates
    init(x1: Int, y1: Int, x2: Int, y2: Int) {
        self.begin = MyPoint(x: x1, y: y1)
        self.end = MyPoint(x: x2, y: y2)
    }
    
    func setBegin(begin: MyPoint) {
        self.begin = begin
    }
    
    func setEnd(end: MyPoint) {
        self.end = end
    }
    
    func getBegin() -> MyPoint {
        return begin
    }
    
    func getEnd() -> MyPoint {
        return end
    }
    
    func setBeginX(x: Int) {
        begin.setX(x: x)
    }
    
    func setBeginY(y: Int) {
        begin.setY(y: y)
    }
    
    func setEndX(x: Int) {
        end.setX(x: x)
    }
    
    func setEndY(y: Int) {
        end.setY(y: y)
    }
    
    func getBeginX() -> Int {
        return begin.getX()
    }
    
    func getBeginY() -> Int {
        return begin.getY()
    }
    
    func getEndX() -> Int {
        return end.getX()
    }
    
    func getEndY() -> Int {
        return end.getY()
    }

    func getBeginXY() -> [Int] {
        return begin.getXY()
    }

    func setBeginXY(x: Int, y: Int) {
        begin.setXY(x: x, y: y)
    }
    
    func getEndXY() -> [Int]{
        return end.getXY()
    }
    
    func setEndXY(x: Int, y: Int) {
        begin.setXY(x: x, y: y)
    }
    
    func getLength() -> Double {
        return begin.distance(another: end)
    }
    
    func getGradient() -> Double {
        
        var deltaY = getEndY() - getBeginY()
        var deltaX = getEndX() - getBeginX()
        
        return Double(deltaY / deltaX)
    }
    
    func toString() -> String {
        return "Line from \(begin.toString()) to \(end.toString())"
    }
    
    func length() -> Double {
        return begin.distance(another: end)
    }
}

// Usage
let point7 = MyPoint(x: 1, y: 2)
let point8 = MyPoint(x: 3, y: 4)

let line1 = MyLine(begin: point7, end: point8)
print(line1.toString())  // Output: Line from Point at (1, 2) to Point at (3, 4)
print("Length of line1: \(line1.length())")  // Output: Length of line1: 2.8284271247461903

let line2 = MyLine(x1: 5, y1: 6, x2: 7, y2: 8)
print(line2.toString())  // Output: Line from Point at (5, 6) to Point at (7, 8)
print("Length of line2: \(line2.length())")  // Output: Length of line2: 2.8284271247461903




// TODO: MyCircle and MyPoint Classes

class MyCircle {
    
    private var center: MyPoint
    private var radius: Int = 1
    
    init(center: MyPoint, radius: Int) {
        self.center = center
        self.radius = radius
    }
    
    func getRadius() -> Int {
        return radius
    }
    
    func setRadius(radius: Int) {
        self.radius = radius
    }
    
    func 
    
    
    
    
    
    
    
}