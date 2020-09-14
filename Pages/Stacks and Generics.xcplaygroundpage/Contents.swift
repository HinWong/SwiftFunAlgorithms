//: [Previous](@previous)

// Generics allows different data types to be used, such as Int and String
// <T> is the notation for generics

import Foundation

//Now the node class can be used for Int, String, ...
class Node<T> {
    let value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

// Now the stack class can be used for Int, String, ...
class Stack<T> {
    
    var top: Node<T>?
    
    func push (_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}

struct User {
    let name: String
    let username: String
}

let me = User(name: "Brian", username: "@brianvoong")
let you = User(name: "Hin", username: "@hin")

let usersStack = Stack<User>()
usersStack.push(me)
usersStack.push(you)

let firstUserPop = usersStack.pop()
print(firstUserPop?.name ?? "")

let stack = Stack<Any>()
stack.push(1)
stack.push(2)
stack.push(3)

stack.peek()

let firstPop = stack.pop() //should return 3
stack.peek()
let secondPop = stack.pop()
stack.peek()
let thirdPop = stack.pop()
stack.peek()
let finalPop = stack.pop()
stack.peek()
