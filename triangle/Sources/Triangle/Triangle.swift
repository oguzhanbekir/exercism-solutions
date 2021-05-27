//Solution goes in Sources


import Foundation

class Triangle {
    
    var kind: String = ""
    
    init(_ side0: Double, _ side1: Double, _ side2: Double) {
        
        var sides = [side0, side1, side2]
        sides.sort(by: {$0 > $1})
        
        if sides[1] + sides[2] <= sides[0] || sides[0] <= 0.0 || sides[1] <= 0.0 || sides[2] <= 0.0  {
            self.kind = "ErrorKind"
        }
        else if sides[0] == sides[1] && sides[1] == sides[2] {
            self.kind = "Equilateral"
        }
        else if sides[0] == sides[1] || sides[1] == sides[2] || sides[2] == sides[0] {
            self.kind = "Isosceles"
        }
        else {
            self.kind = "Scalene"
        }
    }
}
