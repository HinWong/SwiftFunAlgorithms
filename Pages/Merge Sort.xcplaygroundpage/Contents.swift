//: [Previous](@previous)

import Foundation

/// Merge Sort: Keep chopping the array until each value is in its own array, then combine them, then the final array will be sorted
// Credit: Sean Allen

// Split array
func mergeSort(array: [Int]) -> [Int] {
    
    //Check to make sure that the array has more than 1 element
    guard array.count > 1 else {
        return array
    }
    
    //Splitting the array
    //Index 0 up to but not including the middle index
    let leftArray = Array(array[0..<array.count/2])
    
    //Middle index up to but not including the last index
    let rightArray = Array(array[array.count/2..<array.count])
    
    //returning the results of the merge function
    //recursive
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

// Merge array
func merge(left: [Int], right: [Int]) -> [Int] {
    
    var mergeArray: [Int] = []
    var left = left
    var right = right
    
    //Comparing the arrays and appending the values to the appropriate array
    while left.count > 0 && right.count > 0 {
        
        if left.first! < right.first! {
            mergeArray.append(left.removeFirst())
        } else {
            mergeArray.append(right.removeFirst())
        }
    }
    return mergeArray + left + right
}

var numbers: [Int] = []

// 50 random numbers ranging from 0 to 1000 and appending them to the numbers array variable
for _ in 0 ..< 50 {
    let randomInt = Int(arc4random_uniform(UInt32(1000)))
    numbers.append(randomInt)
}
print(numbers)
print()
print(mergeSort(array: numbers))

//: [Next](@next)
