//Solution goes in Sources
struct Garden {
    private var childrenPlants: [String: [Plant]]
    
    init(_ diagram: String, children: [String] = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]) {
        let sortedChildren = children.sorted()
        let rows = diagram.split(separator: "\n").map { String($0) }
        childrenPlants = [:]
        for row in rows {
            for (index, character) in row.enumerated() {
                if childrenPlants[sortedChildren[index / 2]] == nil {
                    childrenPlants[sortedChildren[index / 2]] = []
                }
                childrenPlants[sortedChildren[index / 2]]?.append(Plant(rawValue: character)!)
            }
        }
    }
    
    func plantsForChild(_ child: String) -> [Plant] {
        return childrenPlants[child]!
    }
}

enum Plant: Character {
    case grass = "G",
    clover = "C",
    radishes = "R",
    violets = "V"
}
