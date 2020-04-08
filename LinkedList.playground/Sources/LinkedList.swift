import Foundation

//链表
public struct LinkedList<Value> {
    
    //头结点
    public var head: Node<Value>?
    
    //尾节点
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
        //判断是否是空链表，如果是的话直接插到表头
        if isEmpty == true {
            push(value)
            return
        }
        
        //把尾节点的 next 指向新节点
        tail!.next = Node(value)
        
        //新的节点设置为尾节点
        tail = tail!.next
    }
    
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value> {
        guard tail !== node else {
            //如果 node 是尾节点的话
            append(value)
            return tail!
        }
        
        node.next = Node(value, next: node.next)
        return node.next!
    }
    
    public func node(at index: Int) -> Node<Value>?{
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    public mutating func pop() -> Node<Value>? {
        defer {
            head = head?.next
            if isEmpty{
                tail = nil
            }
        }
        
        return head
    }
    
    public mutating func removeLast() -> Node<Value>? {
        guard let head = head else { return nil }
        
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        
        //循环到尾节点为止
        while let next = current.next {
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        return current
    }
    
    @discardableResult
    public mutating func remove(after node: Node<Value>) -> Node<Value>? {
        defer {
            if node.next === tail {
                tail = node
            }
            node.next = node.next?.next
        }
        
        return node.next
    }
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let h = head else { return "Empty list" }
        
        return h.description
    }
}

extension LinkedList: Collection {
    public subscript(position: Index) -> Value {
        position.node!.value
    }
    
    public var startIndex: Index {
        Index(node: head)
    }
    
    public var endIndex: Index {
        Index(node: tail?.next)
    }
    
    public func index(after i: Index) -> Index{
        Index(node: i.node?.next)
    }
    
    public struct Index: Comparable{
        public var node: Node<Value>?
        
        static public func ==(lhs: Index, rhs: Index) -> Bool{
            switch (lhs.node, rhs.node) {
            case let (left?, right?):
                return left.next === right.next
            case (nil, nil):
                return true
            default:
                return false
            }
        }
        
        static public func <(lhs: Index, rhs: Index) -> Bool{
            guard lhs != rhs else {
                return false
            }
            let nodes = sequence(first: lhs.node) {$0?.next}
            return nodes.contains{ $0 === rhs.node}
        }
    }
}
