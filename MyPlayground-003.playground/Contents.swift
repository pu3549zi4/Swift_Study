//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//var str:String = "Hello, playground"

let emptyString = ""
let emptyString2 = String()

let str2 = String("Hello,swift")

emptyString.isEmpty
str2.isEmpty

let mark = " @。@"
//str2 += mark
str += mark

let name = "Paul"
let age = "26"
let height = "1.71"

var description = "my info\tMy name is \(name).\\ I'm \(age) years old.\n I'm \(height) meters tall.\""
print(description)

//characters
// Characters是基于Unicode的
// String对Unicode的支持

for c in str2.characters{
    print(c)
}
var mar: Character = "!"
str.characters.count
str + String(mar)
str.characters.count
str.append(mar)
str.characters.count

var cafe = "café"
var cafe2 = "cafe\u{0301}"
cafe == cafe2


cafe2
cafe2[cafe2.startIndex.advancedBy(2)]
var fIndex = cafe2.startIndex.advancedBy(2)
fIndex
cafe2[cafe2.startIndex.advancedBy(2)]
cafe2[fIndex]
cafe2[fIndex.predecessor()]
cafe2[fIndex.successor()]
cafe2[cafe2.endIndex.predecessor()]
cafe2[cafe2.startIndex..<fIndex]
var range = cafe2.startIndex..<fIndex

cafe2.replaceRange(range, with: "inpad")
cafe2.appendContentsOf("!!!")
cafe2.insert("?", atIndex: cafe2.endIndex)
cafe2.removeAtIndex(cafe2.endIndex.predecessor())
cafe2
cafe2.removeRange(cafe2.endIndex.advancedBy(-2)..<cafe2.endIndex)


var logo = "🐶♑️🇨🇳💖"
logo.characters.count

str
str.uppercaseString
str.lowercaseString
str.capitalizedString

str
str.containsString("ello")
str.hasPrefix("Hello")
str.hasSuffix("!")

//String的缺点
var s = "one third is \(1.0/3.0)"
//注意：现在Swift中的String和OC中的NSString之间的界限越来越小，如果用format初始化String，在Swift2中已经可以了。
var ss = String(format:"one third is %.2f",1.0/3.0)

//NSString
var s3:NSString = "one third is 0.33😠😩🤒"
s3.substringFromIndex(4)
s3.substringToIndex(3)
s3.substringWithRange(NSMakeRange(4, 5))
s3.length

var s33 = s3 as String
s33.characters.count

let s6 = "   --- Hello -----    " as NSString
s6.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString:" -"))
s6.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString:" "))
s6.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString:"-"))
s6.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString:"- "))

let rane = s6.rangeOfString("ll")
rane.location
rane.length
s6.stringByReplacingOccurrencesOfString("He", withString: "tip")
