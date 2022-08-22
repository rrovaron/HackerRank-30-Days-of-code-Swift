import Foundation

let n = Int(readLine()!)!

var contactPhone = NSMutableDictionary()

for _ in 1...n {
    
    let contact = readLine()!.split(separator: " ")

    if(contact.count > 1) {
        contactPhone.setObject(contact[1], forKey: contact[0])
    } else {
        contactPhone.setObject(NSObject(), forKey: contact[0])
    }
}

var name = readLine()
    while name != nil {
    
    if let phoneNumber = contactPhone.object(forKey: name ?? "") {
        print("\(name ?? "")=\(phoneNumber)")
    } else {
        print("Not found")
    }
    
    name = readLine()
}
