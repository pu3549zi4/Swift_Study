//: Playground - noun: a place where people can play

import UIKit

let point = (1,1)
switch point{
case (0,0):
    print("It's origin!")
case (_,0):
    print("It on the x-axis.")
case (0,_):
    print("It on the y-axis.")
default:
    print("It's just an ordinary point.")
}

switch point{
case (0,0):
    print("It's origin!")
case (_,0):
    print("It on the x-axis.")
case (0,_):
    print("It on the y-axis.")
case (-2...2,-2...2):
    print("It's near the origin.")
    fallthrough
default:
    print("It's just an ordinary point.")
}
//注意：fallthrough并不会判断下一个case（或者default）是否符合switch的条件，而是直接跳进下一个case（或者default）。所以：
//第一 fallthrough不能跳进一个有逻辑的case
//第二 不要用switch和fallthrough组合复杂的判断逻辑，fallth用该用于从一般到特殊的判断

switch point{
case (0,0):
    print("It's origin!")
case (let x,0):
    print("It on the x-axis.")
    print("The x value is \(x)")
case (0,let y):
    print("It on the y-axis.")
    print("The y value is \(y)")
case (let x, let y):
    print("It's just an ordinary point.")
    print("The point is ( \(x) , \(y))")
}

//x^4 - y^2 = 15*x*y (1<=x<=300,1<=y<=300)
//传统
var gotAnswer = false
for m in 1...300{
    for n in 1...300{
        if m*m*m*m - n*n == 15*m*n{
            print(m,n)
            gotAnswer = true
            break
        }
    }
    if gotAnswer{
        break
    }
}
//新方法
//循环可命名用来控制程序运行类似go...to...
findAnswer:
for x in 1...300{
    for y in 1...300{
        if x*x*x*x - y*y == 15*x*y{
            print(x,y)
            break findAnswer
        }
    }
}

//where
let p = (3,3)
switch p{
case var (x,y) where x == y:
    print("It's on the line x == y!")
case var (x,y) where x == -y:
    print("It's on the linr x == -y")
case var (x,y):
    print("It's just an ordinary point")
    print("The point is ( \(x), \(y) )")
}

//if case 后面必须是格式 区间运算符或者新变量或者常量 ＝ 已知常量或者变量
var age = 19
if case 10...19 = age{
    print("You're a teenager.")
}

if case 10...19 = age where age >= 18{
    print("You're a teenager and in a college.")
}

var vector = (3,0)
if case ( let x, 0 ) = vector where x > 2 && x < 5{
    print("It's the vector")
}

for i in 1...100{
    if i%3 == 0{
        print(i)
    }
}

for case let i in 1...100 where i%3 == 0{
    print(i)
}

//guard
//guard必须和break或者return成对出现
func buy(money: Int, price: Int, capacity:Int, volume:Int){
    if money >= price {
        if capacity >= volume {
            print("I can buy it!")
            print("\(money-price) Yuan left.")
            print("\(capacity-volume) cubic meters left.")
        }
        else{
            print("Not enough capacity.")
        }
    }
    else{
        print("Not enough money.")
    }
}

func buy2(money:Int, price:Int, capacity:Int, volume:Int){
    guard money >= price else{
        print("Not enough money.")
        return
    }
    guard capacity >= volume else{
        print("Not enough capacity.")
        return
    }
    print("I can buy it!")
    print("\(money-price) Yuan left.")
    print("\(capacity-volume) cubic meters left.")
}

buy(200, price: 50, capacity: 300, volume: 60)
buy2(30, price: 50, capacity: 40, volume: 60)





























