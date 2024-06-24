import Foundation

protocol Playable {
    func play()
}

class Football: Playable {
    func play() {
        print("Playing Football: Kicking the ball into the goal!")
    }
}

class Volleyball: Playable {
    func play() {
        print("Playing Volleyball: Spiking the ball over the net!")
    }
}

class Basketball: Playable {
    func play() {
        print("Playing Basketball: Shooting the ball into the hoop!")
    }
}


let sports: [Playable] = [Football(), Volleyball(), Basketball()]

for sport in sports {
    sport.play()
}

