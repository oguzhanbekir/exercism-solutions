//Solution goes in Sources
import Foundation

enum NumberClassification {
    case perfect
    case abundant
    case deficient
}

struct NumberClassifier {
    let number: Int
    var classification: NumberClassification {
        get {
            let sum = getFactors(n: number).reduce(0, { (acc, next) -> Int in
                return acc + next
            })
            if sum > number {
                return NumberClassification.abundant
            }
            if sum == number {
                return NumberClassification.perfect
            }
            return NumberClassification.deficient
        }
    }
    
    private func getFactors(n:Int) -> [Int] {
        let upper = n / 2
        var res:[Int] = []
        for i in 1...upper {
            if (n % i) == 0 {
                res.append(i)
            }
        }
        return res
    }
}
