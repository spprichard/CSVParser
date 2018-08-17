import Foundation

enum ReadError : Error {
    case ParseError
}

let content = "1,cat,3,4,5"

let parsedCSV: [[CustomStringConvertible]] = content
    .components(separatedBy: "\n")
    .map({ line in
        line.components(separatedBy: ",").map({ item in
            if let int = Int(item) {
                return int
            } else if let double = Double(item) {
                return double
            }
            return item
        })
    })


print(parsedCSV)



