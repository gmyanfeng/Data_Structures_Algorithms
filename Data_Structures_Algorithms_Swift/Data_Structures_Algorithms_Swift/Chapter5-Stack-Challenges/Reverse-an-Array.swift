//
//  Reverse-an-Array.swift
//  Data_Structures_Algorithms_Swift
//
//  Created by iyf on 2021/1/27.
//

import Foundation

func printInReverse<T>(_ array: [T]) {
    var stack = Stack(array)
    
    while let value = stack.pop() {
        print(value)
    }
}
