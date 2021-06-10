// Copyright (c) 2019 Razeware LLC
// For full license & permission details, see LICENSE.markdown.


example(of: "creating and linking nodes") {
    let node1 = Node(1)
    let node2 = Node(2)
    let node3 = Node(3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}


example(of: "creating a linked list and push") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    print(list)
}

example(of: "using collection") {
    var list = LinkedList<Int>()
    for i in 0...9 {
        list.append(i)
    }
    
    print("List: \(list)")
    print("First element: \(list[list.startIndex])")
    print("Array containing first 3 elements: \(Array(list.prefix(3)))")
    print("Array containing last 3 elements: \(Array(list.suffix(3)))")

    let sum = list.reduce(0, +)
    print("Sum of all values: \(sum)")
}

example(of: "linked list cow") {
    var list1 = LinkedList<Int>()
    list1.append(1)
    list1.append(2)
    
    var list2 = list1
    print("List1: \(list1)")
    print("List2: \(list2)")
    
    print("After appending 3 to list2")
    list2.append(3)
    print("List1: \(list1)")
    print("List2: \(list2)")
    
    print("Removing middle node on list2")
    if let node = list2.node(at: 0) {
        list2.remove(after: node)
    }
    print("List2: \(list2)")
}
