
example(of: "using a stack") {
    var stack = Stack<Int>()
    
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)
    
    print(stack)
    
    if let popedElement = stack.pop() {
        assert(4 == popedElement)
        print("Popped: ",popedElement)
    }
}

example(of: "用一个数组初始化stack") {
    let array = ["a","b","c","d"]
    var stack = Stack(array)
    print(stack)
    stack.pop()
}

example(of: "用动态数组初始化一个stack") {
    var stack:Stack = [1.0,2.0,3.0,4.0]
    print(stack)
    stack.pop()
}
