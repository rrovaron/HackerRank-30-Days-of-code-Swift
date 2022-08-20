import Foundation

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {

    fputs("string: " + string + "\n", stderr)
	
    for (index, char) in string.enumerated() {
        if index % 2 == 0 {
            print(char, terminator: "")
        }
    }
    
    print(" ", terminator: "")
	
    for (index, char) in string.enumerated() {
        if index % 2 != 0 {
            print(char, terminator: "")
        }
    }
    
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
