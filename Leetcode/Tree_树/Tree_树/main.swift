//
//  main.swift
//  Tree_树
//
//  Created by liesheng on 2020/6/1.
//  Copyright © 2020 yf. All rights reserved.
//

import Foundation

//example(of: "creating a tree") {
//    let beverages = TreeNode("Beverages")
//    
//    let hot = TreeNode("Hot")
//    let cold = TreeNode("Cold")
//    
//    beverages.add(hot)
//    beverages.add(cold)
//}

example(of: "depth-first traversal") {
    let tree = makeBeverageTree()
    tree.forEachDepthFirst{ print($0.value) }
}

func makeBeverageTree() -> TreeNode<String>{
    let tree = TreeNode("Beverages")
    
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let chocolate = TreeNode("cocoa")
    
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    
    let ginerAle = TreeNode("ginger ale")
    let bitterLemon = TreeNode("bitter lemon")
    
    tree.add(hot)
    tree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(chocolate)
    
    cold.add(soda)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    
    soda.add(ginerAle)
    soda.add(bitterLemon)
    
    return tree
}

