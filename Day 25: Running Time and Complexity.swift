import Foundation

func isPrime(number: Int) -> Bool {
    
    if number == 1 {
        return false
    } else if number == 2 {    
    	return true
    } else {
        for index in 2 ... Int(sqrt(Double(number))) {
        	if number % index == 0 {
            	return false
        	}
        }
    }

    return true
}

let t = Int(readLine()!)!

for _ in 0..<t {

	let number = Int(readLine()!)!

	if isPrime(number: number) {
	    print("Prime")
	} else {
	    print("Not prime")
	}
}
