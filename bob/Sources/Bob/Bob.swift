//Solution goes in Sources
import Foundation

class Bob {
    class func hey(_ input :String) -> String {
        if isShouting(input: input) {
            return "Whoa, chill out!"
            
        } else if isSilence(input: input) {
            return "Fine. Be that way!"
        
        } else if isAskingQuestion(input: input) {
            return "Sure."
        
        } else {
            return "Whatever."
        }
    }

    private class func isShouting(input:String) -> Bool {
        let hasLowercaseLetters = (input != input.uppercased())
        let hasUppercaseLetters = (input != input.lowercased())
        return hasUppercaseLetters && !hasLowercaseLetters
    }
    
    private class func isSilence(input:String) -> Bool {
        let whitespaceCharacters = NSCharacterSet.whitespaces
        let inputWithoutWhitespace = input.trimmingCharacters(in: whitespaceCharacters)   
        return inputWithoutWhitespace == ""
    }
    
    private class func isAskingQuestion(input:String) -> Bool {
        return input.hasSuffix("?")
    }
}
