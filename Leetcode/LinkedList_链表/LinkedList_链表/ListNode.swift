//
//  ListNode.swift
//  LinkedList_链表
//
//  Created by yf on 2020/5/15.
//  Copyright © 2020 com.bytepanda. All rights reserved.
//

import Foundation

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
        self.next = nil
     }
}
