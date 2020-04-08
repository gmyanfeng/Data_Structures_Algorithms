import Foundation

public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty:Bool {
        head == nil
    }
    
    public mutating func push(_ value: Value) {
        //根据新的值 赋值给头节点， 原来的头节点称为下一个节点
        head = Node(value, next: head)
        
        //tail == nil 说明原来的 linked list 是空的
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {
        if isEmpty == true {
            push(value)
            return
        }
        
        tail!.next = Node(value)
        tail = tail!.next
    }
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let h = head else { return "Empty list" }
        
        return h.description
    }
}
