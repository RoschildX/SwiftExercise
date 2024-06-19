//TODO: 

class MyComplex {
    // Instance variables
    private var real: Double = 0.0
    private var imag: Double = 0.0

    // Initializers
    init() {}

    init(real: Double, imag: Double) {
        self.real = real
        self.imag = imag
    }

    // Getter and Setter methods
    func getReal() -> Double {
        return real
    }

    func setReal(_ real: Double) {
        self.real = real
    }

    func getImag() -> Double {
        return imag
    }

    func setImag(_ imag: Double) {
        self.imag = imag
    }

    func setValue(real: Double, imag: Double) {
        self.real = real
        self.imag = imag
    }

    // toString method
    func toString() -> String {
        return "\(real)+\(imag)i"
    }

    // Methods to check if the number is real or imaginary
    func isReal() -> Bool {
        return imag == 0.0
    }

    func isImaginary() -> Bool {
        return real == 0.0
    }

    // Methods for equality check
    func equals(real: Double, imag: Double) -> Bool {
        return self.real == real && self.imag == imag
    }

    func equals(another: MyComplex) -> Bool {
        return self.real == another.real && self.imag == another.imag
    }

    // Method to calculate magnitude
    func magnitude() -> Double {
        return (real * real + imag * imag).squareRoot()
    }

    // Methods to add complex numbers
    func addInto(_ right: MyComplex) -> MyComplex {
        self.real += right.real
        self.imag += right.imag
        return self
    }

    func addNew(_ right: MyComplex) -> MyComplex {
        return MyComplex(real: self.real + right.real, imag: self.imag + right.imag)
    }
}

let complex1 = MyComplex(real: 3.0, imag: 4.0)
let complex2 = MyComplex(real: 1.0, imag: 2.0)

print(complex1.toString()) 
print(complex2.toString()) 

print(complex1.isReal()) 
print(complex2.isImaginary()) 

let complexSum = complex1.addNew(complex2)
print(complexSum.toString()) 

complex1.addInto(complex2)
print(complex1.toString()) // Outputs: 4.0+6.0i

print(complex1.magnitude()) 
print(complex1.equals(real: 4.0, imag: 6.0)) 
print(complex1.equals(another: complex2)) 
