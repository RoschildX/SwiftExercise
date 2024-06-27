// TODO: Point2D and Point3D

class Point2D {
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

class Point3D: Point2D {
    private var z: Float
    
    init(x: Float, y: Float, z: Float) {
        self.z = z
        super.init(x: x, y: y)
    }
    
    func getZ() -> Float {
        return z
    }
    
    func setZ(z: Float) {
        self.z = z
    } 
    
    func setXYZ(x: Float, y: Float, z: Float) {
        setX(x: x)
        setY(y: y)
        self.z = z 
    }
    
    func getXYZ() -> [Float] {
        return [getX(),getY(),z]
    }
    
    override func toString() -> String {
        return "(\(getX()), \(getY()), \(z))"
    } 
}

