import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var listName = [String]()

for _ in 1...N {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    let firstName = firstMultipleInput[0]
    let emailID = firstMultipleInput[1]
    
    if emailID.range(of: ".+@gmail\\.com$",
                     options: .regularExpression) != nil {

        listName.append(firstName)
    }
}

listName.sort {
    $0 < $1
}

listName.forEach { name in
    print(name)
}
