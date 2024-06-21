protocol Movable {
    mutating func moveUp()
    mutating func moveDown()
    mutating func moveLeft()
    mutating func moveRight()
}

struct MovablePoint: Movable {
    var x: Int
    var y: Int
    var xSpeed: Int
    var ySpeed: Int
    
    mutating func moveUp() {
        y -= ySpeed
    }
    
    mutating func moveDown() {
        y += ySpeed
    }
    
    mutating func moveLeft() {
        x -= xSpeed
    }
    
    mutating func moveRight() {
        x += xSpeed
    }
}

struct MovableCircle: Movable {
    var radius: Int
    var center: MovablePoint
    
    mutating func moveUp() {
        center.y -= center.ySpeed
    }
    
    mutating func moveDown() {
        center.y += center.ySpeed
    }
    
    mutating func moveLeft() {
        center.x -= center.xSpeed
    }
    
    mutating func moveRight() {
        center.x += center.xSpeed
    }
}


var movablepoint = MovablePoint(x: 3, y:5 , xSpeed:2, ySpeed: 4)

var movablecircle = MovableCircle(radius: 8, center: movablepoint)

movablecircle.moveUp()
print(movablecircle.center)
movablecircle.moveUp()
print(movablecircle.center)


