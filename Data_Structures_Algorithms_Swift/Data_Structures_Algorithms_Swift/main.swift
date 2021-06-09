//
//  main.swift
//  Data_Structures_Algorithms_Swift
//
//  Created by iyf on 2021/1/27.
//

import Foundation

//example(of: "using a stack") {
//    var stack = Stack<Int>()
//    stack.push(1)
//    stack.push(2)
//    stack.push(3)
//    stack.push(4)
//    print(stack)
//
//    if let poppedElement = stack.pop() {
//        assert(4 == poppedElement)
//        print("Popped: \(poppedElement)")
//    }
//}

example(of: "initialing a stack from an array") {
    var stack = Stack(["a","b","c","d"])
    print(stack)
    stack.pop()
}

example(of: "initialing a stack from an array literal") {
    var stack: Stack = [1.0,2.0,3.0,4.0]
    print(stack)
    stack.pop()
}


//Challenges 1
example(of: "Reverse an array") {
    let array = [1,2,3,4]
    printInReverse(array)
}
