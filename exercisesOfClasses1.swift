class Circle {
    private var radius: Double = 1.0
    private var color: String = "red"
    
    init(radius: Double, color: String) {
        self.radius = radius 
        self.color = color
    }
    
    func getRadius() -> Double {
        return radius 
    } 
    
    func getColor() -> String {
        return color
    }
    
    func setRadius(radius: Double) {
        self.radius = radius
    }
    
    func setColor(color: String) {
        self.color = color
    }
    
    func toString() -> String {
        return "The radius of circle is \(radius) and area of circle is \(getArea()) "
    } 
    
    func getArea() -> Double {
        
        return 3.14 * (radius * radius)
    }
}

var circle = Circle(radius: 3.7, color: "Margenta")
print(circle.getRadius())
print(circle.getColor())
print(circle.toString())