//: [Previous](@previous)

import Foundation

//2.arrayOccurenceFilter
//Write a function that takes in an array of integers (arr) and a number (n). You function should return an array with only numbers appearing n or more times. Your solution must work in O(n) time. Solve in Repo
//
//Example:
//
var input = [1,3,4,1,9,1,3,4,3,1,2]
var number = 3
//Output: [1,3]   // Because the number 1 and 3 appear 3 or more times in the array

func getRepeatingNumbers(arr:[Int], n: Int) -> Set<Int> {
    var intDict = [Int:Int]()
    var set = Set<Int>()
    for num in arr {
        if let value = intDict[num] {
            intDict[num] = value + 1
            
        } else {
            intDict[num] = 1
    }
}
        
        for num in arr {
        if intDict[num]! >= n {
            set.insert(num)
        }
        }
    return set
}

print(getRepeatingNumbers(arr: input, n: number))
