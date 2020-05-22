//
//  Node.swift
//  LinkedList_链表
//
//  Created by liesheng on 2020/5/22.
//  Copyright © 2020 com.bytepanda. All rights reserved.
//

import Foundation

public class Node<Value>{
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil){
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible{
    public var description: String{
        guard let next = next else { return "\(value)" }
        
        return "\(value) -> " + String(describing: next) + " "
    }
}
