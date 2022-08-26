import Foundation

class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
}

class Student: Person {
    var testScores: [Int]
    
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    func calculate() -> Character {
        
        var sum = 0
        for score in testScores {
            sum += score
        }
        let avg = sum / testScores.count
        
        var score: Character = "O"
        
        switch avg {
        case 90...100:
            score = "O"
        case 80...90:
            score = "E"
        case 70...80:
            score = "A"
        case 55...70:
            score = "P"
        case 40...55:
            score = "D"
        default:
            score = "T"
        }
        
        return score
    }
}

let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
