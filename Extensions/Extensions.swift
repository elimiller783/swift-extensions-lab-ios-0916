//
//  Extensions.swift
//  Extensions
//
//  Created by Elias Miller on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return self.lowercased()
    }

    func shout() -> String {
        return self.uppercased()
    }

    var pigLatin: String {
        var switchLetter = Array(self.characters)
        var newWord: String
        var empArr: [String] = []
        var pigLatin: String = ""
        for word in self.components(separatedBy: " ") {
            var extraLetters: String = word
            var sliceWord = extraLetters.remove(at: extraLetters.startIndex)
            newWord = extraLetters + String(sliceWord) + "ay"
            empArr.append(newWord)
            pigLatin = empArr.joined(separator: " ").lowercased().capitalized
            
        }
        return pigLatin
    }

    var unicornLevel: String {
        var characters = Array(self.characters)
        var empStr = ""
        for char in characters {
            if char != " " {
               empStr += "🦄"
            }
        }
        return empStr
    }
    var points: Int {
        var points = 0
        for letter in self.lowercased().characters {
            switch letter {
            case "a" :
                points += 2
            case "e" :
                points += 2
            case "i" :
                points += 2
            case "o" :
                points += 2
            case "u" :
                points += 2
            case "y" :
                points += 2
            default:
                points += 1
                
            }
        }
        return points
    }
}

extension Int {
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        return (self % number == 0)
        
    }

    var squared: Int {
        return (self * self)
    }
    
    var halved: Int {
       return self.half()
    }

}
