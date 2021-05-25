//Solution goes in Sources
import Foundation

public extension Array
{
    func accumulate<T>( _ callback: (Element) -> T ) -> [T]
    {
        var result: [T] = [T]()
        
        for element in self
        {
            result.append(callback(element))
        }
        
        return result
    }
}
