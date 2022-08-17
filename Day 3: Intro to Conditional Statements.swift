import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

func isOdd(number: Int) -> Bool {
    return number % 2 == 1
}

if isOdd(number: N) {
    print("Weird")
} else if (N >= 2 && N <= 5 && isOdd(number: N) == false) {
    print("Not Weird")
} else if (N >= 6 && N <= 20 && isOdd(number: N) == false) {
    print("Weird")
} else if (isOdd(number: N) == false) {
    print("Not Weird")
}
