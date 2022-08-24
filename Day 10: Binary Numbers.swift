import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let binary = String(n, radix: 2)
let binaryArray = binary.split(separator: "0")

let maxBinarySequence = binaryArray.max(by: {$1.count > $0.count})?.count ?? 0
print(maxBinarySequence)
