//: [Previous](@previous)

import UIKit

// 1.
//        10   (Root node)
//       /  \
//      5    14
//     /     / \
//    1    11  20

// 2.
class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

//Constructing the tree

//        10   (Root node)
//       /  \
//      5    14
//     /     / \
//    1    11  20

//Left branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

//Right branch
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)

let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)

// 3. Implement a serach algorithm that searches throgh this tree for a particular search value

func recursiveSearch(node: Node?, searchValue: Int) -> Bool {

    if node == nil {
        return false
    }

    if node?.value == searchValue {
        return true
    } else {
        //recursion
        return recursiveSearch(node: node?.leftChild, searchValue: searchValue) || recursiveSearch(node: node?.rightChild, searchValue: searchValue)
    }
}
recursiveSearch(node: tenRootNode, searchValue: 20)

//Improved
func improvedSearch(node: Node?, searchValue: Int) -> Bool {
    
    if node == nil {
        return false
    }
    
    if node?.value == searchValue {
        return true
    } else if searchValue < node!.value{
        return improvedSearch(node: node?.leftChild, searchValue: searchValue)
    } else {
        return improvedSearch(node: node?.rightChild, searchValue: searchValue)
    }
}
improvedSearch(node: tenRootNode, searchValue: 20)

//: [Next](@next)
