//: [Previous](@previous)

import Foundation

//func factorialOfValue(value: UInt) -> UInt {
//
//    if value == 0 {
//        return 1
//    }
//
//    var product:UInt = 1
//    for i in 1...value {
//        product = product * i
//        //print(i)
//    }
//
//    return product
//}
//
//factorialOfValue(value: 0)


//Recursion

func recursiveFactorialOfValue(value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    
    return value * recursiveFactorialOfValue(value: value - 1)
    
}
recursiveFactorialOfValue(value: 3)
