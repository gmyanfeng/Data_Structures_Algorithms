//
//  main.swift
//  LinkedList_链表
//
//  Created by yf on 2020/5/15.
//  Copyright © 2020 com.bytepanda. All rights reserved.
//

import Foundation
//
//let head = ListNode(5)
//let node1 = ListNode(4)
//let node2 = ListNode(3)
//let node3 = ListNode(2)
//let trail = ListNode(1)
//
//head.next = node1
//node1.next = node2
//node2.next = node3
//node3.next = trail
//
//let new = Solution().reverseList(head)
//print(new?.val)


//example(of: "creating and linking nodes") {
//    let node1 = Node(value: 1)
//    let node2 = Node(value: 2)
//    let node3 = Node(value: 3)
//
//    node1.next = node2
//    node2.next = node3
//    print(node1)
//}

//insert operation
/*
example(of: "inserting at a particular index") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    print("Before inserting: \(list)")
    
    var middleNode = list.node(at: 1)!
    
    for _ in 1...4 {
        middleNode = list.insert(-1, after: middleNode)
    }
    
    print("After inserting: \(list)")
}
*/

/*
example(of: "pop") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    print("Before popping list: \(list)")
    let poppedValue = list.pop()
    print("After popping list: \(list)")
    print("Popped value: " + String(describing: poppedValue))
}
*/

/*
example(of: "removing the last node") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("before removing last node:",list)
    
    let removedValue = list.removeLast()
    
    print("after removing last node:",list)
    print("removed value: ",String(describing: removedValue))
}
*/

example(of: "removing a node after a particular node") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print("before removing a particular index: ",list)
    
    let index = 1
    let node = list.node(at: index-1)!
    let removedValue = list.remove(after: node)
    
    print("after removing at index \(index):",list)
    print("removed value: ",String(describing: removedValue))
}
