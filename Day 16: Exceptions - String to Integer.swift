import Foundation

enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(inputString: String) throws -> Int {
    
    guard let convert = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    
    return convert
}

let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
