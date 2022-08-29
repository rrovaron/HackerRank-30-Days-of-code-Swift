import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    let node = Node(data: data)

    if head == nil {
        return node
    } else {
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = node
    }
    
    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
