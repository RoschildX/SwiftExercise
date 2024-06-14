import Foundation

// TODO: MyCircle and MyPoint Classes

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
    
    func getCenter() -> MyPoint {
        return center
    }
    
    func setCenter(center: MyPoint) {
        self.center = center
    }
    
     func getCenterX() -> Int {
        return center.getX() 
    }
    
    func setCenterX(x: Int) {
        center.setX(x: x)
    }
        
        
    func getCenterY() -> Int {
        return center.getY()
    }
    
    func setCenterY(y: Int) {
        center.setY(y: y)
    }
    
    func getCenterXY() -> [Int] {
        return [getCenterX(), getCenterY()]
    }
    
    func getArea() -> Double {
        return Double.pi * pow(Double(radius), 2)
    }
    
    func getCircumference() -> Double {
       return 2 * Double.pi * Double(radius)
    }
    
    func distance(another: MyCircle) -> Double {
        return another.getCenter().distance(another: getCenter())
        
    }
}


var circle = MyCircle(center: MyPoint(x:5 ,y: 7), radius: 4)

var circle2 = MyCircle(center: MyPoint(x: 9, y:2), radius: 6)
    
    
print(circle.getCircumference())
print(circle.distance(another: circle2))
