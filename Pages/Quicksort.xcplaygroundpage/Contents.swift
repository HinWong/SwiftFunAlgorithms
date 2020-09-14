//: [Previous](@previous)

import Foundation

// Quicksort

// Best - O(n log n)
// Worst = O(n^2)
// Average = O(n log n)

let unsortedArray = [7,2,6,3,9,4]
let unsortedArray2 = [4, 5, 67, 8, 5, 76, 100, 100000, 99999, 765, 5674, 876, 87654, 90087, 7847684, 7584758]
//let emptyArray = [Int]()

func quicksort(arr:[Int]) -> [Int] {
    
    var less = [Int]()
    var equal = [Int]()
    var greater = [Int]()
    
    if arr.count > 1 {
        let pivot = arr[(arr.count)/2]
        
        for x in arr {
            if x < pivot {
                less.append(x)
            }
            if x == pivot {
                equal.append(x)
            }
            if x > pivot {
                greater.append(x)
            }
            
        }
        return (quicksort(arr: less) + equal + quicksort(arr: greater))
    } else {
        return arr
    }
}

print(quicksort(arr: unsortedArray))
print()
print(quicksort(arr: unsortedArray2))
//print(quicksort(arr: emptyArray))

//: [Next](@next)
