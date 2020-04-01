//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// Implement a function that accepts an array of integers as an argument.
// This function should return the sum of each integer in the array.
// Your solution should be **recursive**. Your function must be pure (cannot use global variables)
var input = [5, 2, 9, 11,10,3]
var sum = 0
// Sample Output: 27

func getSumOfArray(input: inout [Int], sum: inout Int){
    guard !input.isEmpty == true else {
        return
    }
    while !input.isEmpty {
        
    sum += input[0]
    input.remove(at: 0)
    print(sum)
}
 
    return getSumOfArray(input: &input, sum: &sum)
}

getSumOfArray(input: &input, sum: &sum)
