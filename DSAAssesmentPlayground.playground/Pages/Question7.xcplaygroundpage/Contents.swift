//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// What is the runtime of foo and bar in the following code? Explain your reasoning.
// Answer on canvas
func foo(arr: [Int]) {
  for val in arr {
    print(val)
  }
}
//the run time of foo is O(n) because it iterates through the array once.

func bar(arr: [Int]) {
    for _ in arr {
    foo(arr: arr)
  }
    for _ in arr {
    foo(arr: arr)
  }
}

// the run time of bar is O(n^2) bevause we iterate through the array twice .?
