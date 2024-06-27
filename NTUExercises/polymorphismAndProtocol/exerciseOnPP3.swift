// TODO: Protocol implementation on struct

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
