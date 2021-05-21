//Solution goes in Sources

import Foundation

struct Grains {
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
        init(_ val: Int) {
            let message = "Input[\(val)] invalid. Input should be between 1 and 64 (inclusive)"
            self = val > 64 ? .inputTooHigh(message) : .inputTooLow(message)
        }
    }
    
    static func square(_ input: Int) throws -> uint64 {
        guard case 1...64 = input else { throw GrainsError(input) }
        return uint64(1) << uint64(input - 1)
    }
    
    static let total = uint64.max
}
