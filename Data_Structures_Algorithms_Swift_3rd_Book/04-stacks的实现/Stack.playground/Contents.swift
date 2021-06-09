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


/**
Facebook 一道题目
 
Given an absolute path for a file (Unix-style), simplify it.
 
For example,
path = "/home/", => "/home"
path = "/a/./b/../../c/", => "/c"
 */

func simplifyPath(path: String) -> String {
    // 判断传入的字符
    if path.count == 0 {
        return ""
    }
    
    if path.count == 1 && path == "." {
        return path
    }
    
    //利用 "/" 拆分原路径 string 成数组
    let pathArray = path.split(separator: "/")
    
    print(pathArray) // 输出 ["a", ".", "b", "..", "..", "c"]
    
    // 创建一个 String 类型的栈
    var pathStack = Stack<String>()
    
    for char in pathArray {
        switch char {
        case ".":
            break
        case "..":
            pathStack.pop()
        default:
            pathStack.push(String(char))
        }
    }
    
    // 判断 Stack 是否为空
    if pathStack.isEmpty == true {
        return "/"
    }else{
        let top = pathStack.peek()
        return "/" + (top ?? "")
    }
}

let path_test = "/a/./b/../../c/"
print(simplifyPath(path: path_test))

