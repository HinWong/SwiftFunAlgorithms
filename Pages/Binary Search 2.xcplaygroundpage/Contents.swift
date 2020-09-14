//: [Previous](@previous)

import Foundation

/// Binary search 2
/// Keep chopping the array in half to determine whether a value is in the array or not
/// Array must be sorted for this to work
/// This example includes edge cases

let numbers = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 34, 44, 58, 65]

func binarySearch(array:[Int], key: Int) -> Bool {
    
    //Check if the array is empty
    if array.count == 0 {
        return false
    }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = array.count / 2
    let midValue = array[midIndex]
    
    //Check if the key is within the bounds of the array
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) not in the array")
        return false
    }
    
    //Search through back half of the array
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    //Search through front half of the array
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    //Search value is equal to the middle value of the array
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}
binarySearch(array: numbers, key: 10)

//: [Next](@next)
