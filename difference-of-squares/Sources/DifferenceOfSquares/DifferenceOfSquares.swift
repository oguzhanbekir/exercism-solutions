//Solution goes in Sources
import Foundation

struct Squares {
    let number: Int
    var squareOfSum: Int {
        get {
            var result = 0
            for n in 1...number {
                result += n
            }
            return Int(pow(Double(result), 2.0))
        }
    }
    var sumOfSquares: Int  {
        get {
            var result = 0
            for n in 1...number {
                result += Int(pow(Double(n), 2.0))
            }
            return result
        }
    }
    var differenceOfSquares: Int  {
        get {
            return squareOfSum - sumOfSquares
        }
    }

    init(_ n: Int) {
        number = n
    }
}
