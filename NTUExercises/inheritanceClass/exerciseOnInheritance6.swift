// TODO: Superclass Animal and its subclasses

class Animal {
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func toString() -> String {
        return "Animal [name = \(name)]"
    }
}


class Mammal: Animal {

    override init(name: String) {
        super.init(name: name)
    }
    
    override func toString() -> String {
        return "Mammal [\(super.toString()))]"
    }
}


class Cat: Mammal {
    
    override init(name: String) {
        super.init(name: name)
    }
    
    func greets() {
        print("Meow")
    }
    
    override func toString() -> String {
        return "Cat [\(super.toString()))]"
    }
}

var cat = Cat(name: "Oyen")
cat.greets()
print(cat.toString())


class Dog: Mammal {
    override init(name: String) {
        super.init(name: name)
    }
    
    func greets() {
        print("Woof")
    }
    
    func greets(another: Dog) {
        print("Woooof")
    }
    
    override func toString() -> String {
        return "Dog [\(super.toString()))]"
    }
}

let dogFemale = Dog(name: "Bella")
let dogMale = Dog(name: "Arjun")

dogMale.greets(another: dogFemale)



