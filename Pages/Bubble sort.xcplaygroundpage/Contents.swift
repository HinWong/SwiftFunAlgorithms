//: [Previous](@previous)

import Foundation

// Bubble sort is very inefficient, there are much faster sorting algorithms out there

let testArray = [4, 6, 7, 3, 5, 3, 8, 9]

func bubbleSort(array: [Int]) -> [Int] {
    
    var array = array
    for i in 0..<array.count - 1{
        for j in 0..<array.count - 1{
            if array[j] > array [j+1] {
                let temp = array[j]
                array[j] = array[j+1]
                array[j + 1] = temp
            }
        }
    }
    return array
}

print(bubbleSort(array: testArray))

//: [Next](@next)
