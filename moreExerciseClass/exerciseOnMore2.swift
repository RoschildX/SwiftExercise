import Foundation

class MyPolynomial {
    private var coeffs: [Double]
    
    // Constructor to initialize the coefficients array
    init(coeffs: Double...) {
        self.coeffs = coeffs
    }
    
    // Method to get the degree of the polynomial
    func getDegree() -> Int {
        return coeffs.count - 1
    }
    
    // Method to return the polynomial as a string
    func toString() -> String {
        var result = ""
        for (i, coeff) in coeffs.enumerated().reversed() {
            if coeff != 0 {
                if i == 0 {
                    result += "\(coeff)"
                } else if i == 1 {
                    result += "\(coeff)x + "
                } else {
                    result += "\(coeff)x^\(i) + "
                }
            }
        }
        return result.trimmingCharacters(in: CharacterSet(charactersIn: " +"))
    }
    
    // Method to evaluate the polynomial at a given x value
    func evaluate(x: Double) -> Double {
        var result = 0.0
        for (i, coeff) in coeffs.enumerated() {
            result += coeff * pow(x, Double(i))
        }
        return result
    }
    
    // Method to add another polynomial to this polynomial
    func add(right: MyPolynomial) -> MyPolynomial {
        let maxDegree = max(self.getDegree(), right.getDegree())
        var resultCoeffs = [Double](repeating: 0.0, count: maxDegree + 1)
        
        for i in 0...maxDegree {
            if i <= self.getDegree() {
                resultCoeffs[i] += self.coeffs[i]
            }
            if i <= right.getDegree() {
                resultCoeffs[i] += right.coeffs[i]
            }
        }
        return MyPolynomial(coeffs: resultCoeffs)
    }
    
    // Method to multiply another polynomial with this polynomial
    func multiply(right: MyPolynomial) -> MyPolynomial {
        let newDegree = self.getDegree() + right.getDegree()
        var resultCoeffs = [Double](repeating: 0.0, count: newDegree + 1)
        
        for i in 0...self.getDegree() {
            for j in 0...right.getDegree() {
                resultCoeffs[i + j] += self.coeffs[i] * right.coeffs[j]
            }
        }
        return MyPolynomial(coeffs: resultCoeffs)
    }
}


let poly1 = MyPolynomial(coeffs: 1, 2, 3)
let poly2 = MyPolynomial(coeffs: 2, 1) 

let polySum = poly1.add(right: poly2)
let polyProduct = poly1.multiply(right: poly2)

print("Poly1: \(poly1.toString())") 
print("Poly2: \(poly2.toString())") 
print("Sum: \(polySum.toString())") 
print("Product: \(polyProduct.toString())") 
print("Evaluation of Poly1 at x=2: \(poly1.evaluate(x: 2))") 
