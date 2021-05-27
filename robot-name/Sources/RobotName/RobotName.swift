//Solution goes in Sources
import Foundation

class Robot {
    static var assignedNames: Set<String> = Set<String>()
    static func generateName() -> String {
        var newName: String
        repeat {
            let char1 = UnicodeScalar(UInt8(arc4random_uniform(26) + 65))
            let char2 = UnicodeScalar(UInt8(arc4random_uniform(26) + 65))
            let number = arc4random_uniform(999)
            newName = char1.description + char2.description + number.description
        } while assignedNames.contains(newName)
        assignedNames.insert(newName)
        return newName
    }
    
    var name: String
    
    init() {
        self.name = Robot.generateName()
    }
    
    func resetName() {
        self.name = Robot.generateName()
        Robot.assignedNames.remove(self.name)
    }
}
