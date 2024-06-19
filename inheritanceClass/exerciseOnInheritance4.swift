// TODO: Point and Movable Point

class Point {
    private var x: Float 
    private var y: Float
    
    init(x: Float, y: Float) {
        self.x = x
        self.y = y
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
    
    func setY(y : Float) {
        self.y = y
    }
    
   func setXY(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
    
    func getXY() -> [Float] {
        return [x,y]
    }
    
    func toString() -> String {
        return "(\(x),\(y))"
    }
}


class MovablePoint: Point {
    
    private var xSpeed: Float
    private var ySpeed: Float
    
    init(x: Float, y: Float, xSpeed: Float, ySpeed: Float) {
        
        self.xSpeed = xSpeed
        self.ySpeed = ySpeed
        super.init(x: x, y: y)
    }
    
    func getXSpeed() -> Float {
        return xSpeed
    } 
    
    func setXSpeed(xSpeed: Float) {
        self.xSpeed = xSpeed
    }
    
    func getYSpeed() -> Float {
        return ySpeed
    }
    
    func setYSpeed(ySpeed: Float) {
        self.ySpeed = ySpeed
    }
    
    func setSpeed(xSpeed: Float, ySpeed: Float) {
        self.xSpeed = xSpeed
        self.ySpeed = ySpeed
    }
    
    func getSpeed() -> [Float] {
        return [xSpeed, ySpeed]
    }
    
    override func toString() -> String {
        return "(\(getX()), \(getY())), speed= (\(xSpeed), \(ySpeed))"
    }
    
    func move() -> MovablePoint {
        setX(x: getX() + xSpeed)
        setY(y: getY() + ySpeed)
        
        return self
    }
}
