import Foundation

class Solution {
  	var stack: String = ""
    var queue: String = ""
    
    func pushCharacter(ch: Character) {
        stack.append(ch)
    }
    
    func enqueueCharacter(ch: Character) {
        queue.append(ch)
    }
    
    func popCharacter() -> Character {
        
        return stack.removeLast()
    }
    
    func dequeueCharacter() -> Character {
        
        return queue.removeFirst()
    }
}

let s = readLine()!

let obj = Solution()

for character in s { 
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character) 
}


var isPalindrome = true

for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
