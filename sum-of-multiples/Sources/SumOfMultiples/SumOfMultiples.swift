//Solution goes in Sources

import Foundation

class SumOfMultiples {
    
    static func toLimit(_ limit: Int, inMultiples arr: [Int]) -> Int {
        
        if limit <= 0 {
            return 0
        }
        var sum: Int = 0
        for number in 1..<limit {
            for item in arr {
                if item != 0 && number % item == 0 {
                    sum += number
                    print(sum)
                    break
                }
            }
            print("Executed for \(number) Sum after array loop \(sum)")
        }
        return sum
    }
}
