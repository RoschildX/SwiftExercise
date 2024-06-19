import Foundation

class Ball {
    private var x: Float
    private var y: Float
    private var radius: Int
    private var xDelta: Float
    private var yDelta: Float
    
    init(x: Float, y: Float, radius: Int, speed: Float, direction: Float) {
        self.x = x
        self.y = y
        self.radius = radius
        self.xDelta = speed * cos(direction)
        self.yDelta = speed * sin(direction)
    }
    
    func getX() -> Float {
        return x
    }
    
    func setX(x: Float) {
        self.x = x
    }
    
    func getY() -> Float {
        return y
    }
    
    func setY(y: Float) {
        self.y = y
    }
    
    func getRadius() -> Int {
        return radius
    }
    
    func setRadius(radius: Int) {
        self.radius = radius
    }
    
    func getXDelta() -> Float {
        return xDelta
    }
    
    func setXDelta(xDelta: Float) {
        self.xDelta = xDelta
    }
    
    func getYDelta() -> Float {
        return yDelta
    }
    
    func setYDelta(yDelta: Float) {
        self.yDelta = yDelta
    }
    
    func move() {
        x += xDelta
        y += yDelta
    }
    
    func reflectHorizontal() {
        xDelta = -xDelta
    }
    
    func reflectVertical() {
        yDelta = -yDelta
    }
    
    func toString() -> String {
        return "Ball[(\(x),\(y)), speed=(\(xDelta),\(yDelta))]"
    }
}


let ball = Ball(x: 50.0, y: 50.0, radius: 10, speed: 5.0, direction: .pi / 4) 
print(ball.toString()) 
ball.move()
print(ball.toString())
ball.reflectHorizontal()
ball.move()
print(ball.toString()) 
ball.reflectVertical()
ball.move()
print(ball.toString()) 