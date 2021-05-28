//Solution goes in Sources
func flattenArray<T>(_ input: [Any?]) -> [T] {
    
    var value: [T] = [T]()
    
    for item in input {
        if let temp = item as? [Any?] {
            value += flattenArray(temp)
        } else if let temp = item as? T {
            value.append(temp)
        }
    }
    return value
}
