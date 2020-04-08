import Foundation

// 节点
public class Node<Value> {
    //节点的值
    public var value: Value
    
    //节点指向的节点
    public var next: Node?
    
    public init(_ value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

//打印输出优化
extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else { return "\(value)" }
        
        return "\(value)" + "->" + next.description
    }
}
