//Solution goes in Sources

func hello(_ name: String? = nil) -> String {
    
    if let name = name {
        return "Hello, \(name)!"
    } else {
        return "Hello, World!"
    }
}
