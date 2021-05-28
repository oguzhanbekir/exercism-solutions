//Solution goes in Sources

class SecretHandshake {
    private let code: Int
    private let steps: [String] = [
        "wink",
        "double blink",
        "close your eyes",
        "jump",
    ]
    
    init(_ code: Int) {
        self.code = code
    }
    
    var commands: [String] {
        get {
            var handshake: [String] = []
            let binary: [Character] = String(code, radix:2)
                .characters
                .reversed()
            for (b, s) in zip(binary, steps) {
                if b == Character("1") {
                    handshake.append(s)
                }
            }
            if (1<<4) & code != 0 {
                handshake = handshake.reversed()
            }
            return handshake
        }
    }
}
