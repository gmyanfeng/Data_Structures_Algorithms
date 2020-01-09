/**
 Swift 实现 栈结构
 */
public struct Stack<Element>{
    
    private var storage: [Element] = []
    
    public init () { }
    
    public init (_ element: [Element]) {
        storage = element
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    
    public var description: String {
        //把 storage 数组转成字符串数组，然后反转，最后把元素用换行符拼接起来
        """
        ---top---
        \(storage.map{"\($0)"}.reversed().joined(separator: "\n"))
        ---------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: Element...){
        storage = elements
    }
}



