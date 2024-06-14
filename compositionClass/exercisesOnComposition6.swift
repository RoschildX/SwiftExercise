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

