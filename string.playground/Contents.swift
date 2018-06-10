
//: Playground - noun: a place where people can play

import Foundation
var str1 : String! = "23" // first line
var str2 : String! = "123" // second line

var answer : String = "" // answer of the first case
var answer2 : String = "" // answer of the second case


extension String {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    subscript (bounds: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ..< end]
    }
    subscript (bounds: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ... end]
    }
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return self[start ... end]
    }
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ... end]
    }
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ..< end]
    }
}
extension Substring {
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    subscript (bounds: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ..< end]
    }
    subscript (bounds: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ... end]
    }
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return self[start ... end]
    }
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ... end]
    }
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ..< end]
    }
}

if (str1.count == str2.count) {
    for i in 0..<str1.count {
        if (str1[i] != str2[i]) {
            answer.append("s")
        }
    }
}// swap check

if (str1.count > str2.count) {
    for i in 0..<str2.count {
        if (str1[i] != str2[i]) {
            answer.append("s")
        }
    }// swap check
    var difference = str1.count - str2.count
    while (difference != 0) {
        answer.append("d")
        difference = difference - 1
    }
    for i in 0..<str2.count {
        if (str1[i] != str2[i] && str1.count != str2.count){
            answer2.append("d")
            str1.remove(at: str1.index(str1.startIndex, offsetBy: i))
        } //dell check
        if (str1[i] != str2[i] && str1.count == str2.count) {
            answer2.append("s")
        } // swap check
    }
} // dell and swap check

if (str1.count < str2.count) {
    for i in 0..<max(str1.count,str2.count) {
        
        if (str1[i] != str2[i]) {
            if (str1.count != str2.count) {
                str1.insert(str2[i], at: str1.index(str1.startIndex, offsetBy: i))
                answer.append("i") // insert check
            } else {
                answer.append("s") // swap check
            }
        }
    }
}

if(answer2.count != 0){
    if (answer.count < answer2.count) {
        print(answer)
    } else {
        print(answer2)
    }
}else{
    print(answer)
}
 // minimum answer

