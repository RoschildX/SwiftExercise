TODO: Nil-coalescing.

var username: String? = nil

// Nil-coalescing operator
let displayName = username ?? "Guest"
print("The username is \(displayName)")

