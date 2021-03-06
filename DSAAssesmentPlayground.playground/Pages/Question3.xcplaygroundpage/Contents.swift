//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// Write a function sum that takes a Stack of numbers as input, and returns the sum of all elements.
// Input:
// 3
// 4
// 8
// 1
// 4
//
// Output: 20
struct Stack<T> {
    private var arr: [T] = []
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.isEmpty
    }
}

var numStack = Stack<Int>()
numStack.push(3)
numStack.push(4)
numStack.push(1)
numStack.push(4)
numStack.push(8)

print(numStack)

func findSumOfStack(stack: Stack<Int>) -> Int {
    var stackCopy = stack
    var sum = 0
    
    guard !stackCopy.isEmpty else {
        return 0
    }
   
    while !stackCopy.isEmpty {
        let value = stackCopy.pop()
        sum += value ?? -99
    }

return sum
}

print(findSumOfStack(stack: numStack))
