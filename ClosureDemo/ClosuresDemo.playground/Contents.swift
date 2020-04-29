//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var addtionOfTwoNumber:(Int,Int) -> Int = {
    (number1,number2) in
    return number1+number2
}
var subtractionOfTwoNumber:(Int,Int) -> Int = {
    (number1,number2) in
    return number1-number2
}
let result = addtionOfTwoNumber(10,26)
let subtraction = subtractionOfTwoNumber(50,26)

print(str)
print(result)
print(subtraction)
