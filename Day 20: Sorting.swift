import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let aTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

var a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }

// Write your code here
var totalSwaps = 0
for _ in (0..<n) {
        for j in 0..<n - 1 where a[j] > a[j + 1] {
            totalSwaps += 1
            a.swapAt(j, j + 1)
        }
    }

print("Array is sorted in \(totalSwaps) swaps.")
print("First Element: \(a.first ?? 0)")
print("Last Element: \(a.last ?? 0)")
