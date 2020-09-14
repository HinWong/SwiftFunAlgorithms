//: [Previous](@previous)

import Foundation

//Implement a linked list (Insert, Delete, "Special Insert")
//Linked list is less intensive than appending to an array

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    var head: Node?
    
    func displayListItems() {
        print("Here is what's inside your list:")
        
        var current = head
        
        //Keeps on looping until it hits the end of the list
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    //Insertion
    func insert(value: Int) {
        //empty list
        if head == nil {
            head = Node(value: value, next: nil)
            
            //After creating the node, exit the function
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = Node(value: value, next: nil)
    
    }
    
    //Deleting a node from a list
    func delete(value: Int) {
        if head?.value == value {
            head = head?.next
        }
        
        var prev: Node?
        var current = head
        
        while current != nil && current?.value != value {
            prev = current
            current = current?.next
        }
        prev?.next = current?.next
    }
    
    //Special insert
    // 1 -> 2 -> 4 -> 5 -> nil
    func insertInOrder(value: Int) {
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        var currentNode: Node? = head
        while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(value: value, next: currentNode?.next)
    }
    
    func setupDummyNodes() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
}

let sampleList = LinkedList()

// 1 -> 2 -> 3 -> nil
//sampleList.setupDummyNodes()

sampleList.insert(value: 1)
// 1 -> nil

sampleList.insert(value: 2)
//sampleList.insert(value: 3)
sampleList.insert(value: 4)
sampleList.insert(value: 5)

sampleList.insertInOrder(value: 3)

//sampleList.delete(value: 1)
//sampleList.delete(value: 3)
//sampleList.delete(value: 2)

sampleList.displayListItems()







//print(sampleList.head?.value)

//: [Next](@next)
