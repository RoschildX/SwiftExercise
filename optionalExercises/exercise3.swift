// TODO: Optional chaining.

class Person {
    var address: String?
}

let person = Person()
person.address = "123 Main Street"

// Optional chaining
if let address = person.address {
    print("The address is \(address)")
} else {
    print("No address provided")
}
