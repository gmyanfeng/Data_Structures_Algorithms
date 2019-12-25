/*
 泰波那契序列 Tn 定义如下：

 T0 = 0, T1 = 1, T2 = 1, 且在 n >= 0 的条件下 Tn+3 = Tn + Tn+1 + Tn+2

 给你整数 n，请返回第 n 个泰波那契数 Tn 的值。

 示例 1：

 输入：n = 4
 输出：4
 解释：
 T_3 = 0 + 1 + 1 = 2
 T_4 = 1 + 1 + 2 = 4
 示例 2：

 输入：n = 25
 输出：1389537
 
 提示：

 0 <= n <= 37
 答案保证是一个 32 位整数，即 answer <= 2^31 - 1。

 [力扣（LeetCode）](https://leetcode-cn.com/problems/n-th-tribonacci-number)
 */

//solution 1

import Foundation


//垃圾：递归算法
func tribonacci(_ n: Int) -> Int {
    if (n == 0 || n == 1 || n == 2) {
        if n == 0 {
            return 0
        }else{
            return 1
        }
    }
    
    return tribonacci(n-1)+tribonacci(n-2)+tribonacci(n-3)
}

//print(tribonacci(25))


//算法2  复杂度 O(n)
func tribonacci2(_ n: Int) -> Int{
    if (n == 0 || n == 1 || n == 2) {
        if n == 0 {
            return 0
        }else{
            return 1
        }
    }
    
    var target = 0
    
    var a = 0
    var b = 1
    var c = 1
    
    for i in 3...n {
        target = a + b + c
        a = b
        b = c
        c = target
    }
    
    return target
}

//print(tribonacci2(25))

//算法3  复杂度 O(n)
func tribonacci3(_ n: Int) -> Int{
    var a = 0
    var b = 1
    var c = 1
    
    for i in 1...n {
        (a,b,c) = (b,c,a+b+c)
    }
    
    return a
}

print(tribonacci3(25))
