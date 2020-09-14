//: [Previous](@previous)

import UIKit

var sampleSentence = "Lets start by doing this interesting challenge"

func reverseEveryOtherWord(sentence: String) -> String {
    
    let allWords = sampleSentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...allWords.count - 1 {
        let word = allWords[index]
        if newSentence != "" {
            newSentence += " "
        }
        
        if index.isMultiple(of: 3) {
            let reverseWord = String(word.reversed())
            newSentence += reverseWord
        } else {
            newSentence += word
        }
    }
    return newSentence
}

print(reverseEveryOtherWord(sentence: sampleSentence))





//: [Next](@next)
