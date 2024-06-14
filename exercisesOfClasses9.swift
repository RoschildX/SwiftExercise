class Ball {
    private var x: Float
    private var y: Float
    private var radius: Int
    private var xDelta: Float
    private var yDelta: Float

    init(x: Float, y: Float, radius: Int, xDelta: Float, yDelta: Float) {
        self.x = x
        self.y = y
        self.radius = radius
        self.xDelta = xDelta
        self.yDelta = yDelta
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

    func reflectionHorizontal() {
        xDelta = -xDelta
    }

    func reflectionVertical() {
        yDelta = -yDelta
    }

    func toString() -> String {
        return "Ball[(\(x),\(y)),speed=(\(xDelta),\(yDelta))]"
    }
}

var ball1 = Ball(x: 1.1, y: 2.2, radius: 5, xDelta: 3.3, yDelta: 4.4)
print(ball1.toString())  // Should print: Ball[(1.1,2.2),speed=(3.3,4.4)]

var ball2 = Ball(x: 80.0, y: 35.0, radius: 5, xDelta: 4.0, yDelta: 6.0)
print(ball2.toString())  // Should print: Ball[(80.0,35.0),speed=(4.0,6.0)]

print("x is: \(ball2.getX())")
print("y is: \(ball2.getY())")
print("radius is: \(ball2.getRadius())")
print("xDelta is: \(ball2.getXDelta())")
print("yDelta is: \(ball2.getYDelta())")

ball2.move()
print(ball2.toString())  // Should print: Ball[(84.0,41.0),speed=(4.0,6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(88.0,47.0),speed=(4.0,6.0)]
ball2.reflectionVertical()
ball2.move()
print(ball2.toString())  // Should print: Ball[(92.0,41.0),speed=(4.0,-6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(96.0,35.0),speed=(4.0,-6.0)]

ball2.reflectionHorizontal()
ball2.move()
print(ball2.toString())  // Should print: Ball[(92.0,29.0),speed=(-4.0,-6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(88.0,23.0),speed=(-4.0,-6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(84.0,17.0),speed=(-4.0,-6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(80.0,11.0),speed=(-4.0,-6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(76.0,5.0),speed=(-4.0,-6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(72.0,-1.0),speed=(-4.0,-6.0)]
ball2.reflectionVertical()
ball2.move()
print(ball2.toString())  // Should print: Ball[(68.0,5.0),speed=(-4.0,6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(64.0,11.0),speed=(-4.0,6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(60.0,17.0),speed=(-4.0,6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(56.0,23.0),speed=(-4.0,6.0)]
ball2.move()
print(ball2.toString())  // Should print: Ball[(52.0,29.0),speed=(-4.0,6.0)]