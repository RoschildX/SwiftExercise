protocol Flyable {
    func fly_obj()
}

class Spacecraft: Flyable {
    func fly_obj() {
        print("Spacecraft is launching into space")
    }
}


class Airplane: Flyable {
    func fly_obj() {
        print("Airplane is taking off")
    }
}

class Helicopter: Flyable {
    func fly_obj() {
        print("Helicopter is lifting off")
    }
}


let spacecraft = Spacecraft()
spacecraft.fly_obj()

let airplane = Airplane()
airplane.fly_obj()

let helicopter = Helicopter()
helicopter.fly_obj() 

