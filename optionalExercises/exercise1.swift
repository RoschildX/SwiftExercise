//TODO: Optional binding using if let

var name: String? = "John Doe"

// Optional binding
if let unwrappedName = name {
    print("The name is \(unwrappedName)")
} else {
    print("No name provided")
}

