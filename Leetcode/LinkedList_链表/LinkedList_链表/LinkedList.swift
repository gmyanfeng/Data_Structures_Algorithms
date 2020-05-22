//
//  LinkedList.swift
//  LinkedList_链表
//
//  Created by liesheng on 2020/5/22.
//  Copyright © 2020 com.bytepanda. All rights reserved.
//

import Foundation

public struct LinkedList<Value>{
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){}
    
    public var isEmpty: Bool{
        head == nil
    }
    
    //add a value at the front of the list
    public mutating func push(_ value: Value){
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    //add a value at the end of the list
    public mutating func append(_ value: Value){
        guard isEmpty == false else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
    }
    
    //add a value after a particular node of the list
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>) -> Node<Value>{
        guard tail !== node else {
            append(value)
            return tail!
        }
        
        node.next = Node(value: value, next: node.next)
        
        return node.next!
    }
    
    public func node(at index: Int) -> Node<Value>?{
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    //remove the value at the front of the list
    @discardableResult
    public mutating func pop() -> Value? {
        
        if isEmpty {
            return nil
        }
        let oldHead = head
        
        if head === tail{
            head = nil
            tail = nil
            return oldHead?.value
        }
        
        head = head?.next
        if isEmpty {
            tail = nil
        }
        
        return oldHead?.value
        
        /* 简单写法
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        
        return head?.value
         */
    }
    
    //remove the last node of the list
    @discardableResult
    public mutating func removeLast() -> Value?{
        guard let head = head else { return nil }
        
        guard head.next != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.next {
            prev = current
            current = next
        }
        prev.next = nil
        tail = prev
        return current.value
    }
    
    @discardableResult
    public mutating func remove(after node: Node<Value>) -> Value?{
        if node.next === tail {
            tail = node.next
            return tail?.value
        }
        
        let oldNode = node.next!
        node.next = node.next?.next
        
        return oldNode.value
    }
}

extension LinkedList: CustomStringConvertible{
    public var description: String{
        guard let head = head else { return "Empty list" }
        
        return String(describing: head)
    }
}
