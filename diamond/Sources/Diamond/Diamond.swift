//Solution goes in Sources
fileprivate func *(n: Int, c: Character) -> String {
    return String(repeating: c, count: n)
}

func makeDiamond(letter: Character) -> [String] {
    
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map(String.init)
    let letter = String(letter).uppercased()
    guard alphabet.contains(letter) else { return [] }
    
    let letters = alphabet[...alphabet.index(of: letter)!]
    var accu = [String]()
    for (index, letter) in letters.enumerated() {
        let row = (letters.count - 1 - index) * " " + letter + index * " "
        accu.append(row + String(row.reversed().dropFirst()))
    }
    return accu + Array(accu.reversed().dropFirst())
}
