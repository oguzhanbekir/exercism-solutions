//Solution goes in Sources
import Foundation

struct Hamming {
    static func compute(_ text: String, against: String) -> Int? {
        var hd: Int = 0
        if text.endIndex != against.endIndex {
            return nil
        }
       
        for (index, _) in text.enumerated() {
            if Array(text)[index] !=  Array(against)[index] {
                hd += 1
            }
        }
        return hd
    }
}
