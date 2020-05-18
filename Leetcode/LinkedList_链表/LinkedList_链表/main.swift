//
//  main.swift
//  LinkedList_链表
//
//  Created by yf on 2020/5/15.
//  Copyright © 2020 com.bytepanda. All rights reserved.
//

import Foundation

let head = ListNode(5)
let node1 = ListNode(4)
let node2 = ListNode(3)
let node3 = ListNode(2)
let trail = ListNode(1)

head.next = node1
node1.next = node2
node2.next = node3
node3.next = trail

let new = Solution().reverseList(head)
print(new?.val)

