class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
}

class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    func levelOrder(root: Node?) -> Void {
    	var queue = [Node]()
        queue.append(root!)

        while queue.count != 0 {
            let current = queue.removeFirst()
            print("\(current.data) ", terminator: "")

            if current.left != nil {
                queue.append(current.left!)
            }
            if current.right != nil {
                queue.append(current.right!)
            }
       }
    }

}

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)
