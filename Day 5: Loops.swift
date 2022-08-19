import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for index in 1...10 {
    print("\(n) x \(index) = \(n * index)")
}
