//Solution goes in Sources

struct Queens: CustomStringConvertible {
    
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }
    
    var white: [Int] = []
    var black: [Int] = []
    
    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        self.white = white
        self.black = black
        guard (white.count == 2 && black.count == 2) else {
            throw InitError.incorrectNumberOfCoordinates
        }
        guard !(white.contains { $0 > 7 || $0 < 0 } || black.contains { $0 > 7 || $0 < 0 })
            else {
            throw InitError.invalidCoordinates
        }
        guard !(white == black) else {
            throw InitError.sameSpace
        }
    }
    
    var canAttack: Bool {
        return white[0] == black[0]
            || white[1] == black[1]
            || abs(white[0] - black[0]) == abs(white[1] - black[1])
    }
    
    var description: String {
        var board = [String]()
        for row in 0...7 {
            var line = [String]()
            for col in 0...7 {
                switch (row, col) {
                case (white[0], white[1]): line.append("W")
                case (black[0], black[1]): line.append("B")
                default: line.append("_")
                }
            }
            board.append(line.joined(separator: " "))
        }
        return board.joined(separator: "\n")
    }
}
