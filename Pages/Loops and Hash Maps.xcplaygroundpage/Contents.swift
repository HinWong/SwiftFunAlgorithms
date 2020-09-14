//: [Previous](@previous)

import Foundation

var sampleString = "1234567890"


// 1. For loops
// 2. Hash maps (Dictionary)

func convert(string: String) -> Int? {
    
    var total = 0
    
    // apply a simple algorithm to solve this problem
    // 1337 = 1000 + 300 + 30 + 7
    // 1337 = (1 * 10^3) + (3 * 10^2) + (3 * 10^1) + (7 * 10^0)
    
    let valueMap = [
        "1" as Character: 1,
        "2": 2,
        "3": 3,
        "4": 4,
        "5": 5,
        "6": 6,
        "7": 7,
        "8": 8,
        "9": 9,
        "0": 0
    ]
    
    for (i,c) in string.enumerated() {
        let exponent = string.count - i - 1
        if let value = valueMap[c] {
            let num = Decimal(value) * pow(10, exponent)
            total += NSDecimalNumber(decimal: num).intValue
        } else {
            return nil
        }
    }
    
    
    return total
    
    // return Int(string) ?? 0 Solve this problem without using String to Int conversion code
}

convert(string: sampleString)





//: [Next](@next)
