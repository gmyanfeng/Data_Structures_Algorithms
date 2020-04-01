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
    
    list.push(4)
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
}
