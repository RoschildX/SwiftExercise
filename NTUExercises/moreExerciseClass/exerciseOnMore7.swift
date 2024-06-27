import Foundation

class Container {
    private var x1: Int
    private var y1: Int
    private var x2: Int
    private var y2: Int

    init(x: Int, y: Int, width: Int, height: Int) {
        self.x1 = x
        self.y1 = y
        self.x2 = x + width - 1
        self.y2 = y + height - 1
    }

    func getX() -> Int {
        return x1
    }

    func getY() -> Int {
        return y1
    }

    func getWidth() -> Int {
        return x2 - x1 + 1
    }

    func getHeight() -> Int {
        return y2 - y1 + 1
    }

    func collides(ball: Ball) -> Bool {
        let ballX = ball.getX()
        let ballY = ball.getY()
        let ballRadius = 1.0 // Assuming ball radius to be 1 for this example, adjust as necessary

        if (ballX - ballRadius <= Float(x1) || ballX + ballRadius >= Float(x2)) {
            ball.reflectHorizontal()
            return true
        }
        if (ballY - ballRadius <= Float(y1) || ballY + ballRadius >= Float(y2)) {
            ball.reflectVertical()
            return true
        }
        return false
    }

    func toString() -> String {
        return "Container[(\(x1),\(y1)) to (\(x2),\(y2))]"
    }
}

extension Ball {
    func reflectHorizontal() {
        // Implement the logic to reflect ball horizontally
        // For example, if you have velocity properties, invert the horizontal velocity
    }

    func reflectVertical() {
        // Implement the logic to reflect ball vertically
        // For example, if you have velocity properties, invert the vertical velocity
    }
}





import Foundation

func testContainer() {
    // Create a Container object
    let container = Container(x: 0, y: 0, width: 10, height: 10)
    print(container.toString()) // Should print Container[(0,0) to (9,9)]

    // Create a Ball object
    let ball = Ball(x: 5.0, y: 5.0, z: 0.0)
    print("Ball coordinates: \(ball.toString())") // Should print (5.0,5.0,0.0)

    // Check if ball collides with container
    let doesCollide = container.collides(ball: ball)
    print("Does ball collide with container? \(doesCollide)") // Should print true or false based on ball's position
}

testContainer()