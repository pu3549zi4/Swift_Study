//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)
str += " :)"
print(str)


var stre:String = "oelg"

var a:Int = 12
var b:Double = 1.000
var c = Double(a) + b

print(a,b,c,separator:"=")

//字符串插值
print("\(a)*\(b)=\(a*Int(b))")

//下划线
//1 使用下划线忽略元组分量
var loginResult = (true, "Paul")
var (isLoginSuccess, _) = loginResult
if isLoginSuccess{
    print("Login success")
}
else{
    print("Login failed!")
}
//2 使用下划线忽略标记，只注重次数
var result = 1
var base = 2
var power = 10
for _ in 1...power{
    result *= base
}
result
00
for var aa = -6.28; aa <= 6.28; aa += 0.1{
    sin(aa)
}

for var acc in 0...Int(6.28*2.0/0.1){
    var aca = -6.28+Double(acc)*0.10
    aca
    sin(aca)
}

var abb = -6.28
while abb <= 6.28 {
    sin(abb)
    abb += 0.1
}

//两个人掷骰子，连续三次大于对方，获胜
var aWin = 0
var bWin = 0
var game = 0
while aWin < 3 && bWin < 3{
    
    game += 1
    
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    print("a is \(a), b is \(b).", terminator:"")
    
    if a > b{
        print("A win!")
        bWin = 0
        aWin += 1
    }
    else if a < b{
        print("B win!")
        bWin += 1
        aWin = 0
    }
    else{
        print("draw")
        aWin = 0
        bWin = 0
    }
}

let winner = aWin == 3 ? "A" : "B"
print("After \(game) games, \(winner) win!!!")


//两个人掷骰子，点数大，获胜
//1
var awin = false
var bwin = false
repeat{
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    print("a is \(a), b is \(b).",terminator:"")
    
    if a > b{
        awin = true
    }
    else if a < b{
        bwin = true
    }
    else{
        print("draw",terminator:"")
    }
    
}while !awin && !bwin

let winer = awin ? "A" : "B"
print("\(winer) win!!")
//2
while true{
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    
    if a == b{
        print("draw")
        continue
    }
    let win = a > b ? "A" : "B"
    print("\(win) win!!!")
    break
}

//switch语句中default是必须的如果没有操作语句可以用break或者()表示，而swift中;不能用来表示空语句
//并且swift中的switch语句不仅可以用于原来的整型还使用于其他的基础数据类型，比如:字符串，Bool，浮点型等
var rating = "b"
switch rating{
case "a","A":
    print("Great!")
case "b","B":
    print("Just so-so")
case "c","C":
    print("It's bad")
default:
//    break
    ()
}




















