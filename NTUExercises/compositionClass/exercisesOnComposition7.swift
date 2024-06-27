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
print(line1.toString())
print("Length of line1: \(line1.length())")

let line2 = MyLine(x1: 5, y1: 6, x2: 7, y2: 8)
print(line2.toString())
print("Length of line2: \(line2.length())")

