import UIKit

let numbers = [1, 2, 4, 6, 8, 9, 11, 13, 16, 17, 20]

var hundred = [Int]()
for i in 1...100 {
    hundred.append(i)
}

// The least elegant solution
// Linear complexity

//func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
//    for num in array {
//        if num == searchValue {
//            return true
//        }
//    }
//    return false
//}
//print(linearSearchForSearchValue(searchValue: 16, array: numbers))



//Binary Search
//Logarithmic complexity
//Array must be sorted first

func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {

    var leftIndex = 0
    var rightIndex = array.count - 1

    while leftIndex <= rightIndex {

        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]

        print("middle value: \(middleValue)", "leftIndex:\(leftIndex)", "rightIndex:\(rightIndex)", "[\(array[leftIndex]), \(array[rightIndex])]")

        if middleValue == searchValue {
            return true
        }

        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }

        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }

    }

    return false
}
print(binarySearchForSearchValue(searchValue: 4, array: numbers))
//print(binarySearchForSearchValue(searchValue: 16, array: numbers))
//print(binarySearchForSearchValue(searchValue: 17, array: numbers))
//print(binarySearchForSearchValue(searchValue: 40, array: numbers))

//print(binarySearchForSearchValue(searchValue: 99, array: hundred))
