func findSquare(of number: Int?) -> Int? {
    guard let num = number else {
        return nil
    }
    return num * num
}

if let square = findSquare(of: 4) {
    print("The square is \(square)")
} else {
    print("Input was nil")
}
