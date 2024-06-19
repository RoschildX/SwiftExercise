import Foundation

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
        return "(\(real)+\(imag)i)"
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

    // Method to calculate argument
    func argument() -> Double {
        return atan2(imag, real)
    }

    // Methods to add complex numbers
    func add(_ right: MyComplex) -> MyComplex {
        self.real += right.real
        self.imag += right.imag
        return self
    }

    func addNew(_ right: MyComplex) -> MyComplex {
        return MyComplex(real: self.real + right.real, imag: self.imag + right.imag)
    }

    // Methods to subtract complex numbers
    func subtract(_ right: MyComplex) -> MyComplex {
        self.real -= right.real
        self.imag -= right.imag
        return self
    }

    func subtractNew(_ right: MyComplex) -> MyComplex {
        return MyComplex(real: self.real - right.real, imag: self.imag - right.imag)
    }

    // Methods to multiply complex numbers
    func multiply(_ right: MyComplex) -> MyComplex {
        let newReal = self.real * right.real - self.imag * right.imag
        let newImag = self.real * right.imag + self.imag * right.real
        self.real = newReal
        self.imag = newImag
        return self
    }

    func multiplyNew(_ right: MyComplex) -> MyComplex {
        let newReal = self.real * right.real - self.imag * right.imag
        let newImag = self.real * right.imag + self.imag * right.real
        return MyComplex(real: newReal, imag: newImag)
    }

    // Methods to divide complex numbers
    func divide(_ right: MyComplex) -> MyComplex {
        let denominator = right.real * right.real + right.imag * right.imag
        let newReal = (self.real * right.real + self.imag * right.imag) / denominator
        let newImag = (self.imag * right.real - self.real * right.imag) / denominator
        self.real = newReal
        self.imag = newImag
        return self
    }

    func divideNew(_ right: MyComplex) -> MyComplex {
        let denominator = right.real * right.real + right.imag * right.imag
        let newReal = (self.real * right.real + self.imag * right.imag) / denominator
        let newImag = (self.imag * right.real - self.real * right.imag) / denominator
        return MyComplex(real: newReal, imag: newImag)
    }

    // Method to conjugate the complex number
    func conjugate() -> MyComplex {
        return MyComplex(real: self.real, imag: -self.imag)
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

complex1.add(complex2)
print(complex1.toString()) 

print(complex1.magnitude()) 
print(complex1.argument()) 

let complexSub = complex1.subtractNew(complex2)
print(complexSub.toString())

let complexMul = complex1.multiplyNew(complex2)
print(complexMul.toString()) 

let complexDiv = complex1.divideNew(complex2)
print(complexDiv.toString()) 

let complexConjugate = complex1.conjugate()
print(complexConjugate.toString())