import UIKit

// Q1.
// Given a linked list, write a function to traverse it and print each value in order.
class Node<T> {
    var next: Node<T>?
    weak var previous:Node<T>?
    let val: T
    init(val: T) {
        self.val = val
    }
}

class LinkedList <T> {
    private var head: Node<T>?
    private var tail : Node<T>?
    
    public var isEmpty:Bool {
        return head == nil
    }
    
    public var first:Node<T>?{
        return head
    }
    
    public var last:Node<T>?{
        return tail
    }
    
    
    public func append(value:T){
        let newNode = Node(val: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        
        else {
            head = newNode
        }
        
        tail = newNode
    }
}

//extension LinkedList: CustomStringConvertible {
//    var description: String {
//        var text = "->"
//        var node = head
//
//        while head != nil {
//            text += "\(String(describing: node?.val))"
//            node = node?.next
//            if node != nil {
//                text += "->"
//            }
//        }
//
//        return text + "-> nil"
//    }
//
//
//}



//// Print format:
//```
//-> 4 -> 9 -> 2 -> 3 -> nil
//```

let numberChain = LinkedList<Int>()

numberChain.append(value: 4)
numberChain.append(value: 9)
numberChain.append(value: 2)
numberChain.append(value: 3)
numberChain.append(value: 7)
numberChain.append(value: 16)
numberChain.append(value: 88)

func traverseList() -> String{
    var list = ""
    var node = numberChain.first
    
    while node != nil {
        list += "\(node?.val ?? -99)"
        node = node?.next
        
        list += "->"
    }

    return list + "nil"
}

print(traverseList())
//print(numberChain.description)
