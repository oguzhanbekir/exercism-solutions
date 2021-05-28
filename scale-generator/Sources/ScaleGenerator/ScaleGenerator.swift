//Solution goes in Sources
struct ScaleGenerator {
    private let chromaticSharp = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
    private let choromaticFlat = ["A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab"]
    private let forSharp = ["C", "G", "D", "A", "E", "B", "F#", "a", "e", "b", "f#", "c#", "g#", "d#"]
    private let intervals: [Character: Int] = ["m": 1, "M": 2, "A": 3]
    
    var tonic: String
    var scaleName: String
    var pattern: String = "mmmmmmmmmmmm"
    
    var name: String {
        "\(tonic.normalized()) \(scaleName)"
    }
    
    private var chromaticScale: [String] {
        forSharp.contains(tonic) ? chromaticSharp : choromaticFlat
    }
    
    func pitches() -> [String] {
        var index = chromaticScale.firstIndex(of: tonic.normalized())!
        return pattern.map {
            let key = chromaticScale[index]
            index = (index + (intervals[$0] ?? 0)) % 12
            return key
        }
    }
}

extension String {
    func normalized() -> String {
        guard let first = first else { return "" }
        return first.uppercased() + dropFirst()
    }
}
