//
//  24_ReverseList_反转链表.swift
//  LinkedList_链表
//
//  Created by yf on 2020/5/15.
//  Copyright © 2020 com.bytepanda. All rights reserved.
//

/**
 面试题24. 反转链表 https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/
 
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

 示例:
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
  
 限制：
 0 <= 节点个数 <= 5000
 
 注意：本题与主站 206 题相同：https://leetcode-cn.com/problems/reverse-linked-list/
 */

import Foundation

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if  head == nil {
            return head
        }
        
        if head!.next == nil{
            return head
        }
        
        let newHead = reverseList(head!.next)
        
        head!.next?.next = head
        
        head?.next = nil
        
        return newHead
    }
}
