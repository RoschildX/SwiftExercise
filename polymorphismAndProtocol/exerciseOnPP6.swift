protocol Animal {
    var name: String {get set}
    func greets()
}

extension Animal {
    func greets() {
        print("Unknown")
    }
}

class Cat: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greets() {
        print("Meow")
    }
}

class Dog: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greets() {
        print("Woof")
    }
    
    func greets(another: Dog) {
        print("Woooof")
    }
}

class BigDog: Dog {

    override func greets() {
        print("Woozzz")
    }
    
    override func greets(another: Dog) {
        print("Woooozzz")
    }
    
    func greets(another: BigDog) {
        print("Woooozzz")
    }
}


var cat = Cat(name: "Oren")
cat.greets()
var dog = Dog(name: "John")
dog.greets()
