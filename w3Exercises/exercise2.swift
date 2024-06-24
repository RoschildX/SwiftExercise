protocol Animal {
    func bark()
}

class Dog: Animal {
    func bark() {
        print("Dog is barking")
    }
}


let dog = Dog()
dog.bark()

