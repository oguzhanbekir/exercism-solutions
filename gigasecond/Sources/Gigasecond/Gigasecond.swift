//Solution goes in Sources
import Foundation

struct Gigasecond {
    let description : String
    static let formatter: DateFormatter = {
        let f = DateFormatter()
        f.locale = Locale(identifier: "en_US_POSIX")
        f.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        f.timeZone = TimeZone(secondsFromGMT: 0)
        return f
    }()
    
    init? (from : String) {
        if let date = Gigasecond.formatter.date(from: from) {
            let hence = Date(timeInterval: pow(10, 9), since: date)
            description = Gigasecond.formatter.string(from: hence)
        } else {
            return nil
        }
    }
}
