//: Playground - noun: a place where people can play

import UIKit

//Problem #1
let myString: String = "Hello"
var cost = 3.14
var cnt: Int = 2
let shouldWe: Bool = true
let constant: Int = 0xB
let constant2: Int = 0b1010

//Problem 2
var str = "Hello, playground"
var number=10;
print(str + " is said \(number) times")

//Problem 3
var BeeTypes: [String] = ["queen","worker","drone"]
print("The first type of bee is the "+BeeTypes[0])
BeeTypes.append("king")
BeeTypes += ["are","use"]

//problem #4
for item in BeeTypes{
    print(item)
    
}

for (item, value) in BeeTypes.enumerated(){
    print("item \(item): \(value)")
}

//problem #5
var author: Dictionary<String, Float> = ["Mark Twain":8.9, "Nathaniel Hawthorne":5.1, "John Steinbeck":2.3, "C.S.Lewis":9.9, "Jon Krakaur":6.1]

//problem 6
print(author["John Steinbeck"]!)
author["Erik Larson"] = 9.2
var JK: Int = Int(author["Jon Krakaur"]!)
var MT: Int = Int(author["Mark Twain"]!)
if JK > MT {
    print("Jon Krahaur has the higher score")
} else {
    print("Mark Twain has the higher score")
}

//problem #7
for (name, rate) in author {
    print("\(name): \(rate)")
}

//problem #8
for index in 1...10 {
    print("\(index)")
}

//problem #9
for index in stride(from: 10, through: 1, by: -1){
    print("\(index)")
}

//problem #10
let x = 3, y = 5
var answer = 0
for _ in 1...y {
    answer += x
}
print("\(answer)")


