//Solution goes in Sources
import Foundation

struct DNA {
    var nucleotides: [String: Int] = ["T": 0, "A": 0, "C": 0, "G": 0]
    init?(strand: String) {
        for char in strand {
            let strChr = String(char)
            switch char {
            case "A", "C", "G", "T":
                nucleotides[strChr]! += 1

            default:
                return nil
            }
        }
    }

    public func count(_ nucleotide: String) -> Int {
        return nucleotides[nucleotide]!
    }

    public func counts() -> [String: Int] {
        return nucleotides
    }
}
