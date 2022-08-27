import Foundation

protocol Book {
    
    var title: String { get set }
    var author: String { get set }
    
    func display()
}

class MyBook: Book {
    
    var title: String
    var author: String
    
    private var price: Int
    
    init(title: String, author:String, price: Int) {
        self.title = title
        self.author = author
        self.price = price
    }
    
    func display() {
        print("Title: \(title)\nAuthor: \(author)\nPrice: \(price)")
    }
}

let title = readLine()!
let author = readLine()!
let price = Int(readLine()!)!
let newBook = MyBook(title: title, author: author, price: price);
newBook.display();
