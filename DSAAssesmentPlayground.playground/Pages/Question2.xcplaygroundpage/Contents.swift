//: [Previous](@previous)

import Foundation

//2.arrayOccurenceFilter
//Write a function that takes in an array of integers (arr) and a number (n). You function should return an array with only numbers appearing n or more times. Your solution must work in O(n) time. Solve in Repo
//
//Example:
//
var input = [1,3,4,1,9,1,3,4,3,1,2]
var input2 = [1,2,33,4,5,6,7,7,334,4,5,665,4,3,234,5,6,7,88,8,7,6,4,4,5,6,7,7,2,3,4455,6,6,77,7,66,77,66,7,88,8,99,8,7,7,6,5,5,3,33,22,3,445,666,4,33,4,5,66,5,334,45,6,6,7,7,8,8,9,9,9,222,3,3,4,44444,5,55,6,6,7,77,8,8,7,6,5,544,4,55,112,2,3,333,2,2,22,4,44,3,3,4,43,2,222,3,33,44,3,2,2,2,3,3333,4,4,4,3,33,3,44444,4,44,4,4,3,5,5,66]
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

print(getRepeatingNumbers(arr: input2, n: number))
