//
//  Stack.swift
//  Data_Structures_Algorithms_Swift
//
//  Created by iyf on 2021/1/27.
//

import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init(_ elements: [Element]) {
        self.storage = elements
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        ----top----
        \(storage.map {"\($0)"}.reversed().joined(separator: "\n"))
        -----------
        """
    }
    
    public mutating func push(_ element: Element){
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
