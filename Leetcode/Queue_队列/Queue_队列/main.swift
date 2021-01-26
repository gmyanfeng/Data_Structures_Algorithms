//
//  main.swift
//  Queue_队列
//
//  Created by liesheng on 2020/6/1.
//  Copyright © 2020 yf. All rights reserved.
//

import Foundation

var queue = QueueArray<String>()

queue.enqueue("Ray")
queue.enqueue("Brian")
queue.enqueue("Eric")
print(queue)

queue.dequeue()
print(queue)

queue.peek
