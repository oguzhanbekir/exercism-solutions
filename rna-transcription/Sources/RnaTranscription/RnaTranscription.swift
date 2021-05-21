//Solution goes in Sources


import Foundation

enum TranscriptionError: Error {
    case invalidNucleotide(String)
}

struct Nucleotide {
    
    let nucleotide: String
    func complementOfDNA() throws -> String {
        var result = ""
        for letter in nucleotide {
            switch letter {
            case "G": result += "C"
            case "C": result += "G"
            case "T": result += "A"
            case "A": result += "U"
            default: throw TranscriptionError.invalidNucleotide("\(letter) is not a valid Nucleotide")
            }
        }
        return result
    }
    
    init(_ n: String) {
        nucleotide = n
    }
}


